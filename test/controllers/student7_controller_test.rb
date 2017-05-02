require 'test_helper'

class Student7ControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get student7_login_url
    assert_response :success
  end

  test "should get index" do
    get student7_index_url
    assert_response :success
  end

end
