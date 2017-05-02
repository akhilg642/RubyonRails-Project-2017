require 'test_helper'

class Student3ControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get student3_login_url
    assert_response :success
  end

  test "should get index" do
    get student3_index_url
    assert_response :success
  end

end
