require 'test_helper'

class DeisgnsControllerTest < ActionController::TestCase
  setup do
    @deisgn = deisgns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deisgns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deisgn" do
    assert_difference('Deisgn.count') do
      post :create, :deisgn => @deisgn.attributes
    end

    assert_redirected_to deisgn_path(assigns(:deisgn))
  end

  test "should show deisgn" do
    get :show, :id => @deisgn
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @deisgn
    assert_response :success
  end

  test "should update deisgn" do
    put :update, :id => @deisgn, :deisgn => @deisgn.attributes
    assert_redirected_to deisgn_path(assigns(:deisgn))
  end

  test "should destroy deisgn" do
    assert_difference('Deisgn.count', -1) do
      delete :destroy, :id => @deisgn
    end

    assert_redirected_to deisgns_path
  end
end
