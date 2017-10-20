class EmployeeTypesController < ApplicationController
  before_action :set_employee_type, only: [:show, :update, :destroy]

  # GET /employee_types
  def index
    @employee_types = EmployeeType.all

    render json: @employee_types
  end

  # GET /employee_types/1
  def show
    render json: @employee_type
  end

  # POST /employee_types
  def create
    @employee_type = EmployeeType.new(employee_type_params)

    if @employee_type.save
      render json: @employee_type, status: :created, location: @employee_type
    else
      render json: @employee_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employee_types/1
  def update
    if @employee_type.update(employee_type_params)
      render json: @employee_type
    else
      render json: @employee_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employee_types/1
  def destroy
    @employee_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_type
      @employee_type = EmployeeType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def employee_type_params
      params.require(:employee_type).permit(:employee_type)
    end
end
