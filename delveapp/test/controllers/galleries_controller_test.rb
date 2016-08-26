require 'test_helper'

class GalleriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get galleries_index_url
    assert_response :success
  end

  test "should get show" do
    get galleries_show_url
    assert_response :success
  end

end
