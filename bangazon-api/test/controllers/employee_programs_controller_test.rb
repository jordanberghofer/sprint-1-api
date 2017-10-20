require 'test_helper'

class EmployeeProgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_program = employee_programs(:one)
  end

  test "should get index" do
    get employee_programs_url, as: :json
    assert_response :success
  end

  test "should create employee_program" do
    assert_difference('EmployeeProgram.count') do
      post employee_programs_url, params: { employee_program: { employee_id: @employee_program.employee_id, program_id: @employee_program.program_id } }, as: :json
    end

    assert_response 201
  end

  test "should show employee_program" do
    get employee_program_url(@employee_program), as: :json
    assert_response :success
  end

  test "should update employee_program" do
    patch employee_program_url(@employee_program), params: { employee_program: { employee_id: @employee_program.employee_id, program_id: @employee_program.program_id } }, as: :json
    assert_response 200
  end

  test "should destroy employee_program" do
    assert_difference('EmployeeProgram.count', -1) do
      delete employee_program_url(@employee_program), as: :json
    end

    assert_response 204
  end
end
