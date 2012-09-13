require 'test_helper'

class MilestonesControllerTest < ActionController::TestCase
  setup do
    @milestone = milestones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:milestones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create milestone" do
    assert_difference('Milestone.count') do
      post :create, milestone: { business_pm: @milestone.business_pm, it_pm: @milestone.it_pm, project_id: @milestone.project_id, rfc_id: @milestone.rfc_id, software_release_id: @milestone.software_release_id, test_manager: @milestone.test_manager, timesheets_request_date: @milestone.timesheets_request_date, work_order: @milestone.work_order }
    end

    assert_redirected_to milestone_path(assigns(:milestone))
  end

  test "should show milestone" do
    get :show, id: @milestone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @milestone
    assert_response :success
  end

  test "should update milestone" do
    put :update, id: @milestone, milestone: { business_pm: @milestone.business_pm, it_pm: @milestone.it_pm, project_id: @milestone.project_id, rfc_id: @milestone.rfc_id, software_release_id: @milestone.software_release_id, test_manager: @milestone.test_manager, timesheets_request_date: @milestone.timesheets_request_date, work_order: @milestone.work_order }
    assert_redirected_to milestone_path(assigns(:milestone))
  end

  test "should destroy milestone" do
    assert_difference('Milestone.count', -1) do
      delete :destroy, id: @milestone
    end

    assert_redirected_to milestones_path
  end
end
