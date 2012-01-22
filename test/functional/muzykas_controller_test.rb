require 'test_helper'

class MuzykasControllerTest < ActionController::TestCase
  setup do
    @muzyka = muzykas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muzykas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muzyka" do
    assert_difference('Muzyka.count') do
      post :create, :muzyka => @muzyka.attributes
    end

    assert_redirected_to muzyka_path(assigns(:muzyka))
  end

  test "should show muzyka" do
    get :show, :id => @muzyka.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @muzyka.to_param
    assert_response :success
  end

  test "should update muzyka" do
    put :update, :id => @muzyka.to_param, :muzyka => @muzyka.attributes
    assert_redirected_to muzyka_path(assigns(:muzyka))
  end

  test "should destroy muzyka" do
    assert_difference('Muzyka.count', -1) do
      delete :destroy, :id => @muzyka.to_param
    end

    assert_redirected_to muzykas_path
  end
end
