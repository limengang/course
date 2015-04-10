require 'test_helper'

class KechengsControllerTest < ActionController::TestCase
  setup do
    @kecheng = kechengs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kechengs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kecheng" do
    assert_difference('Kecheng.count') do
      post :create, kecheng: { name: @kecheng.name, teacher: @kecheng.teacher, time: @kecheng.time }
    end

    assert_redirected_to kecheng_path(assigns(:kecheng))
  end

  test "should show kecheng" do
    get :show, id: @kecheng
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kecheng
    assert_response :success
  end

  test "should update kecheng" do
    patch :update, id: @kecheng, kecheng: { name: @kecheng.name, teacher: @kecheng.teacher, time: @kecheng.time }
    assert_redirected_to kecheng_path(assigns(:kecheng))
  end

  test "should destroy kecheng" do
    assert_difference('Kecheng.count', -1) do
      delete :destroy, id: @kecheng
    end

    assert_redirected_to kechengs_path
  end
end
