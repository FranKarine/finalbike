require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contactus" do
    get :contactus
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get rent" do
    get :rent
    assert_response :success
  end

  test "should get routes" do
    get :routes
    assert_response :success
  end

end
