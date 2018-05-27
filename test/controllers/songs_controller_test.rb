require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get newsong_path
    assert_response :success
  end

  test "should get index" do
    get root_path
    assert_response :success
  end

  
end
