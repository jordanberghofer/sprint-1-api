class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :update, :destroy]

  notice =  "This is my alert"
  # GET /customers
  def index
    @customers = Customer.all
    # @active_customers = Customer.all(:active)
    #   if @active_customers == Customer.all(false)
    #     puts "Hey! You got this to work!!!"
    #   end
    # render json: @customers

    if params['active'] == 'false'

      @false_customers = Customer.where(active: false)
      render json: @false_customers

    elsif params['active'] == 'true'
      @true_customers = Customer.where(active: true)
      render json: @true_customers
    else
      render json: @customers
    end

      # Person.where("administrator = 1").order("created_on DESC").find(1)
  


    
  end

  # GET /customers/1
  def show
    render json: @customer
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: @customer, status: :created, location: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /customers/1
  def update
    if @customer.update(customer_params)
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /customers/1
  def destroy
    @customer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :stale, :last_date_active, :active)
    end
end
