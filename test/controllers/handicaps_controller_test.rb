require 'test_helper'

class HandicapsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get handicaps_index_url
    assert_response :success
  end

  test "should get create" do
    get handicaps_create_url
    assert_response :success
  end

  test "should get new" do
    get handicaps_new_url
    assert_response :success
  end

  test "should get edit" do
    get handicaps_edit_url
    assert_response :success
  end

  test "should get show" do
    get handicaps_show_url
    assert_response :success
  end

  test "should get update" do
    get handicaps_update_url
    assert_response :success
  end

  test "should get destroy" do
    get handicaps_destroy_url
    assert_response :success
  end

end
