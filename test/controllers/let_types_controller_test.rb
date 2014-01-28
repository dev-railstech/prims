require 'test_helper'

class LetTypesControllerTest < ActionController::TestCase
  setup do
    @let_type = let_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:let_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create let_type" do
    assert_difference('LetType.count') do
      post :create, let_type: { description: @let_type.description, type: @let_type.type }
    end

    assert_redirected_to let_type_path(assigns(:let_type))
  end

  test "should show let_type" do
    get :show, id: @let_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @let_type
    assert_response :success
  end

  test "should update let_type" do
    patch :update, id: @let_type, let_type: { description: @let_type.description, type: @let_type.type }
    assert_redirected_to let_type_path(assigns(:let_type))
  end

  test "should destroy let_type" do
    assert_difference('LetType.count', -1) do
      delete :destroy, id: @let_type
    end

    assert_redirected_to let_types_path
  end
end
