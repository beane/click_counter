require 'test_helper'

class ButtonClicksControllerTest < ActionController::TestCase
  setup do
    @button_click = button_clicks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:button_clicks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create button_click" do
    assert_difference('ButtonClick.count') do
      post :create, button_click: {  }
    end

    assert_redirected_to button_click_path(assigns(:button_click))
  end

  test "should show button_click" do
    get :show, id: @button_click
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @button_click
    assert_response :success
  end

  test "should update button_click" do
    patch :update, id: @button_click, button_click: {  }
    assert_redirected_to button_click_path(assigns(:button_click))
  end

  test "should destroy button_click" do
    assert_difference('ButtonClick.count', -1) do
      delete :destroy, id: @button_click
    end

    assert_redirected_to button_clicks_path
  end
end
