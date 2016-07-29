require 'test_helper'

class SchoolControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get school_welcome_url
    assert_response :success
  end

  test "should get students" do
    get school_students_url
    assert_response :success
  end

  test "should get groups" do
    get school_groups_url
    assert_response :success
  end

  test "should get student" do
    get school_student_url
    assert_response :success
  end

  test "should get group" do
    get school_group_url
    assert_response :success
  end

end
