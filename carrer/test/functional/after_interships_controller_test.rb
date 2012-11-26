require 'test_helper'

class AfterIntershipsControllerTest < ActionController::TestCase
  setup do
    @after_intership = after_interships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:after_interships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create after_intership" do
    assert_difference('AfterIntership.count') do
      post :create, after_intership: { ambition: @after_intership.ambition, commentsOfTachers: @after_intership.commentsOfTachers, impressionContents: @after_intership.impressionContents, intershipPriod: @after_intership.intershipPriod, levelOfAchievement: @after_intership.levelOfAchievement, overallImpression: @after_intership.overallImpression, workingHours: @after_intership.workingHours }
    end

    assert_redirected_to after_intership_path(assigns(:after_intership))
  end

  test "should show after_intership" do
    get :show, id: @after_intership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @after_intership
    assert_response :success
  end

  test "should update after_intership" do
    put :update, id: @after_intership, after_intership: { ambition: @after_intership.ambition, commentsOfTachers: @after_intership.commentsOfTachers, impressionContents: @after_intership.impressionContents, intershipPriod: @after_intership.intershipPriod, levelOfAchievement: @after_intership.levelOfAchievement, overallImpression: @after_intership.overallImpression, workingHours: @after_intership.workingHours }
    assert_redirected_to after_intership_path(assigns(:after_intership))
  end

  test "should destroy after_intership" do
    assert_difference('AfterIntership.count', -1) do
      delete :destroy, id: @after_intership
    end

    assert_redirected_to after_interships_path
  end
end
