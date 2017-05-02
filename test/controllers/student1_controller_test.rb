require 'test_helper'

class Student1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student1_index_url
    assert_response :success
  end

  test "should get login" do
    get student1_login_url
    assert_response :success
  end

end
