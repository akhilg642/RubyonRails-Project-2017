require 'test_helper'

class Student6ControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get student6_login_url
    assert_response :success
  end

  test "should get index" do
    get student6_index_url
    assert_response :success
  end

end
