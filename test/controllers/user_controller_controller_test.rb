require 'test_helper'

class UserControllerControllerTest < ActionDispatch::IntegrationTest
  test 'should get login' do
    get user_controller_login_url
    assert_response :success
  end
end
