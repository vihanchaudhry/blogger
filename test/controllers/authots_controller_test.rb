require 'test_helper'

class AuthotsControllerTest < ActionController::TestCase
  setup do
    @authot = authots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:authots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create authot" do
    assert_difference('Authot.count') do
      post :create, authot: { email: @authot.email, password: @authot.password, password_confirmation: @authot.password_confirmation, username: @authot.username }
    end

    assert_redirected_to authot_path(assigns(:authot))
  end

  test "should show authot" do
    get :show, id: @authot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @authot
    assert_response :success
  end

  test "should update authot" do
    patch :update, id: @authot, authot: { email: @authot.email, password: @authot.password, password_confirmation: @authot.password_confirmation, username: @authot.username }
    assert_redirected_to authot_path(assigns(:authot))
  end

  test "should destroy authot" do
    assert_difference('Authot.count', -1) do
      delete :destroy, id: @authot
    end

    assert_redirected_to authots_path
  end
end
