class EmployeeProgramsController < ApplicationController
  before_action :set_employee_program, only: [:show, :update, :destroy]

  # GET /employee_programs
  def index
    @employee_programs = EmployeeProgram.all

    render json: @employee_programs
  end

  # GET /employee_programs/1
  def show
    render json: @employee_program
  end

  # POST /employee_programs
  def create
    @employee_program = EmployeeProgram.new(employee_program_params)

    if @employee_program.save
      render json: @employee_program, status: :created, location: @employee_program
    else
      render json: @employee_program.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employee_programs/1
  def update
    if @employee_program.update(employee_program_params)
      render json: @employee_program
    else
      render json: @employee_program.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employee_programs/1
  def destroy
    @employee_program.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_program
      @employee_program = EmployeeProgram.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def employee_program_params
      params.require(:employee_program).permit(:employee_id, :program_id)
    end
end
