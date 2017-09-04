require 'test_helper'

class MusiricaControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get musirica_home_url
    assert_response :success
  end

  test "should get help" do
    get musirica_help_url
    assert_response :success
  end

end
