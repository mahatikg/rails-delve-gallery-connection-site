require 'test_helper'

class PaintingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get paintings_new_url
    assert_response :success
  end

  test "should get index" do
    get paintings_index_url
    assert_response :success
  end

  test "should get show" do
    get paintings_show_url
    assert_response :success
  end

  test "should get create" do
    get paintings_create_url
    assert_response :success
  end

  test "should get edit" do
    get paintings_edit_url
    assert_response :success
  end

  test "should get update" do
    get paintings_update_url
    assert_response :success
  end

  test "should get delete" do
    get paintings_delete_url
    assert_response :success
  end

end
