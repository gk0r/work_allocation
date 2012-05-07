require 'test_helper'

class SoftwareReleasesControllerTest < ActionController::TestCase
  setup do
    @software_release = software_releases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:software_releases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create software_release" do
    assert_difference('SoftwareRelease.count') do
      post :create, software_release: @software_release.attributes
    end

    assert_redirected_to software_release_path(assigns(:software_release))
  end

  test "should show software_release" do
    get :show, id: @software_release
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @software_release
    assert_response :success
  end

  test "should update software_release" do
    put :update, id: @software_release, software_release: @software_release.attributes
    assert_redirected_to software_release_path(assigns(:software_release))
  end

  test "should destroy software_release" do
    assert_difference('SoftwareRelease.count', -1) do
      delete :destroy, id: @software_release
    end

    assert_redirected_to software_releases_path
  end
end
