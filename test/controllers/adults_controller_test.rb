require 'test_helper'

class AdultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adults_index_url
    assert_response :success
  end

  test "should get create" do
    get adults_create_url
    assert_response :success
  end

  test "should get new" do
    get adults_new_url
    assert_response :success
  end

  test "should get edit" do
    get adults_edit_url
    assert_response :success
  end

  test "should get show" do
    get adults_show_url
    assert_response :success
  end

  test "should get update" do
    get adults_update_url
    assert_response :success
  end

  test "should get destroy" do
    get adults_destroy_url
    assert_response :success
  end

end
