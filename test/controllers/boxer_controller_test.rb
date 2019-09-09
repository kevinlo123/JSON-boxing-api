require 'test_helper'

class BoxerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boxer_index_url
    assert_response :success
  end

  test "should get create" do
    get boxer_create_url
    assert_response :success
  end

  test "should get show" do
    get boxer_show_url
    assert_response :success
  end

  test "should get update" do
    get boxer_update_url
    assert_response :success
  end

  test "should get destroy" do
    get boxer_destroy_url
    assert_response :success
  end

end
