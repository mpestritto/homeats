require 'test_helper'

class ChefsProfilesControllerTest < ActionController::TestCase
  setup do
    @chefs_profile = chefs_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chefs_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chefs_profile" do
    assert_difference('ChefsProfile.count') do
      post :create, :chefs_profile => @chefs_profile.attributes
    end

    assert_redirected_to chefs_profile_path(assigns(:chefs_profile))
  end

  test "should show chefs_profile" do
    get :show, :id => @chefs_profile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @chefs_profile.to_param
    assert_response :success
  end

  test "should update chefs_profile" do
    put :update, :id => @chefs_profile.to_param, :chefs_profile => @chefs_profile.attributes
    assert_redirected_to chefs_profile_path(assigns(:chefs_profile))
  end

  test "should destroy chefs_profile" do
    assert_difference('ChefsProfile.count', -1) do
      delete :destroy, :id => @chefs_profile.to_param
    end

    assert_redirected_to chefs_profiles_path
  end
end
