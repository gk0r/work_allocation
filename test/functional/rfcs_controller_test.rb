require 'test_helper'

class RfcsControllerTest < ActionController::TestCase
  setup do
    @rfc = rfcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rfcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rfc" do
    assert_difference('Rfc.count') do
      post :create, rfc: { description: @rfc.description, project_id: @rfc.project_id, rfc: @rfc.rfc }
    end

    assert_redirected_to rfc_path(assigns(:rfc))
  end

  test "should show rfc" do
    get :show, id: @rfc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rfc
    assert_response :success
  end

  test "should update rfc" do
    put :update, id: @rfc, rfc: { description: @rfc.description, project_id: @rfc.project_id, rfc: @rfc.rfc }
    assert_redirected_to rfc_path(assigns(:rfc))
  end

  test "should destroy rfc" do
    assert_difference('Rfc.count', -1) do
      delete :destroy, id: @rfc
    end

    assert_redirected_to rfcs_path
  end
end
