require 'test_helper'

class Student2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student2_index_url
    assert_response :success
  end

  test "should get login" do
    get student2_login_url
    assert_response :success
  end

end
