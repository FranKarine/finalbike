require 'test_helper'

class BikeListsControllerTest < ActionController::TestCase
  setup do
    @bike_list = bike_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bike_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bike_list" do
    assert_difference('BikeList.count') do
      post :create, bike_list: { image_url: @bike_list.image_url, name: @bike_list.name, price: @bike_list.price, type: @bike_list.type }
    end

    assert_redirected_to bike_list_path(assigns(:bike_list))
  end

  test "should show bike_list" do
    get :show, id: @bike_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bike_list
    assert_response :success
  end

  test "should update bike_list" do
    patch :update, id: @bike_list, bike_list: { image_url: @bike_list.image_url, name: @bike_list.name, price: @bike_list.price, type: @bike_list.type }
    assert_redirected_to bike_list_path(assigns(:bike_list))
  end

  test "should destroy bike_list" do
    assert_difference('BikeList.count', -1) do
      delete :destroy, id: @bike_list
    end

    assert_redirected_to bike_lists_path
  end
end
