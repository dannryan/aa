require 'test_helper'

class AasControllerTest < ActionController::TestCase
  setup do
    @aa = aas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aa" do
    assert_difference('Aa.count') do
      post :create, aa: { aclass: @aa.aclass, segment: @aa.segment, sub_segment: @aa.sub_segment }
    end

    assert_redirected_to aa_path(assigns(:aa))
  end

  test "should show aa" do
    get :show, id: @aa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aa
    assert_response :success
  end

  test "should update aa" do
    patch :update, id: @aa, aa: { aclass: @aa.aclass, segment: @aa.segment, sub_segment: @aa.sub_segment }
    assert_redirected_to aa_path(assigns(:aa))
  end

  test "should destroy aa" do
    assert_difference('Aa.count', -1) do
      delete :destroy, id: @aa
    end

    assert_redirected_to aas_path
  end
end
