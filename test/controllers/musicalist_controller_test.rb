require 'test_helper'

class MusicalistControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get musicalist_home_url
    assert_response :success
  end

  test "should get help" do
    get musicalist_help_url
    assert_response :success
  end

end
