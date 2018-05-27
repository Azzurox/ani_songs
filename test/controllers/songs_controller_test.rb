require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get songs_new_path
    assert_response :success
  end

  test "should get show" do
    get root_path
    assert_response :success
  end

end
