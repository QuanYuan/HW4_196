require 'test_helper'

class SubordinatesControllerTest < ActionController::TestCase
  setup do
    @subordinate = subordinates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subordinates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subordinate" do
    assert_difference('Subordinate.count') do
      post :create, subordinate: { name: @subordinate.name, work_for: @subordinate.work_for }
    end

    assert_redirected_to subordinate_path(assigns(:subordinate))
  end

  test "should show subordinate" do
    get :show, id: @subordinate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subordinate
    assert_response :success
  end

  test "should update subordinate" do
    put :update, id: @subordinate, subordinate: { name: @subordinate.name, work_for: @subordinate.work_for }
    assert_redirected_to subordinate_path(assigns(:subordinate))
  end

  test "should destroy subordinate" do
    assert_difference('Subordinate.count', -1) do
      delete :destroy, id: @subordinate
    end

    assert_redirected_to subordinates_path
  end
end
