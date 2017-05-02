require 'test_helper'

class Student4ControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get student4_login_url
    assert_response :success
  end

  test "should get index" do
    get student4_index_url
    assert_response :success
  end

end
