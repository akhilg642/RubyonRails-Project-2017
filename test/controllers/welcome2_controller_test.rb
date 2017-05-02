require 'test_helper'

class Welcome2ControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get welcome2_login_url
    assert_response :success
  end

end
