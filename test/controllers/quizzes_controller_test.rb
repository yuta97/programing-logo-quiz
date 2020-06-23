require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_path
    assert_response :success
  end

  # test "should get show" do
  #   get quiz_path
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_quiz_path
  #   assert_response :success
  # end

  # test "should get create" do
  #   get quizzes_create_url
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_quiz_path
  #   assert_response :success
  # end

  # test "should get update" do
  #   get quizzes_update_url
  #   assert_response :success
  # end

  # test "should get destroy" do
  #   get quizzes_destroy_url
  #   assert_response :success
  # end

end
