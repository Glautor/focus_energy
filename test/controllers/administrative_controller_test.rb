require 'test_helper'

class AdministrativeControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get administrative_users_url
    assert_response :success
  end

end
