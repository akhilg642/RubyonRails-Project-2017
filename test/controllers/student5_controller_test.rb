require 'test_helper'

class Student5ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student5_index_url
    assert_response :success
  end

  test "should get login" do
    get student5_login_url
    assert_response :success
  end

end
