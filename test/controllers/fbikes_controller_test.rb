require 'test_helper'

class FbikesControllerTest < ActionController::TestCase
  setup do
    @fbike = fbikes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fbikes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fbike" do
    assert_difference('Fbike.count') do
      post :create, fbike: { description: @fbike.description, image_url: @fbike.image_url, name: @fbike.name, price: @fbike.price }
    end

    assert_redirected_to fbike_path(assigns(:fbike))
  end

  test "should show fbike" do
    get :show, id: @fbike
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fbike
    assert_response :success
  end

  test "should update fbike" do
    patch :update, id: @fbike, fbike: { description: @fbike.description, image_url: @fbike.image_url, name: @fbike.name, price: @fbike.price }
    assert_redirected_to fbike_path(assigns(:fbike))
  end

  test "should destroy fbike" do
    assert_difference('Fbike.count', -1) do
      delete :destroy, id: @fbike
    end

    assert_redirected_to fbikes_path
  end
end
