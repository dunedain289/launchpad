require 'test_helper'

class RocketsControllerTest < ActionController::TestCase
  setup do
    @rocket = rockets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rockets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rocket" do
    assert_difference('Rocket.count') do
      post :create, rocket: @rocket.attributes
    end

    assert_redirected_to rocket_path(assigns(:rocket))
  end

  test "should show rocket" do
    get :show, id: @rocket.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rocket.to_param
    assert_response :success
  end

  test "should update rocket" do
    put :update, id: @rocket.to_param, rocket: @rocket.attributes
    assert_redirected_to rocket_path(assigns(:rocket))
  end

  test "should destroy rocket" do
    assert_difference('Rocket.count', -1) do
      delete :destroy, id: @rocket.to_param
    end

    assert_redirected_to rockets_path
  end
end
