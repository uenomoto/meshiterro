require "test_helper"

class PostimageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get postimage_new_url
    assert_response :success
  end

  test "should get index" do
    get postimage_index_url
    assert_response :success
  end

  test "should get show" do
    get postimage_show_url
    assert_response :success
  end
end
