require 'test_helper'

class BoxerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get '/api/boxers'
    assert_response :success
  end

  test "should get create" do
    post '/api/boxers'
    assert_response :success
  end

  test "should get show" do
    get '/api/boxers/1'
    assert_response :success
  end

  test "should get update" do
    patch '/api/boxers/1'   
    assert_response :success
  end

  test "should get destroy" do
    delete '/api/boxers/9' 
    assert_response :success
  end

end
