require 'test_helper'

class AllocationsControllerTest < ActionController::TestCase
  setup do
    @allocation = allocations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allocations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allocation" do
    assert_difference('Allocation.count') do
      post :create, allocation: { analysis: @allocation.analysis, contract_id: @allocation.contract_id, credit: @allocation.credit, debit: @allocation.debit, descriptiom: @allocation.descriptiom, supplier_id: @allocation.supplier_id }
    end

    assert_redirected_to allocation_path(assigns(:allocation))
  end

  test "should show allocation" do
    get :show, id: @allocation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allocation
    assert_response :success
  end

  test "should update allocation" do
    patch :update, id: @allocation, allocation: { analysis: @allocation.analysis, contract_id: @allocation.contract_id, credit: @allocation.credit, debit: @allocation.debit, descriptiom: @allocation.descriptiom, supplier_id: @allocation.supplier_id }
    assert_redirected_to allocation_path(assigns(:allocation))
  end

  test "should destroy allocation" do
    assert_difference('Allocation.count', -1) do
      delete :destroy, id: @allocation
    end

    assert_redirected_to allocations_path
  end
end
