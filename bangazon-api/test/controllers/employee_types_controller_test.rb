require 'test_helper'

class EmployeeTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_type = employee_types(:one)
  end

  test "should get index" do
    get employee_types_url, as: :json
    assert_response :success
  end

  test "should create employee_type" do
    assert_difference('EmployeeType.count') do
      post employee_types_url, params: { employee_type: { employee_type: @employee_type.employee_type } }, as: :json
    end

    assert_response 201
  end

  test "should show employee_type" do
    get employee_type_url(@employee_type), as: :json
    assert_response :success
  end

  test "should update employee_type" do
    patch employee_type_url(@employee_type), params: { employee_type: { employee_type: @employee_type.employee_type } }, as: :json
    assert_response 200
  end

  test "should destroy employee_type" do
    assert_difference('EmployeeType.count', -1) do
      delete employee_type_url(@employee_type), as: :json
    end

    assert_response 204
  end
end
