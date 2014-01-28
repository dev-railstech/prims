require 'test_helper'

class DetailsControllerTest < ActionController::TestCase
  setup do
    @detail = details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail" do
    assert_difference('Detail.count') do
      post :create, detail: { closed: @detail.closed, contract_id: @detail.contract_id, date: @detail.date, date: @detail.date, date_added: @detail.date_added, description: @detail.description, item_val: @detail.item_val, link: @detail.link, nom: @detail.nom, plink: @detail.plink, qty: @detail.qty, suspend: @detail.suspend, val: @detail.val, val: @detail.val, vat: @detail.vat, vat_code: @detail.vat_code, why: @detail.why }
    end

    assert_redirected_to detail_path(assigns(:detail))
  end

  test "should show detail" do
    get :show, id: @detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail
    assert_response :success
  end

  test "should update detail" do
    patch :update, id: @detail, detail: { closed: @detail.closed, contract_id: @detail.contract_id, date: @detail.date, date: @detail.date, date_added: @detail.date_added, description: @detail.description, item_val: @detail.item_val, link: @detail.link, nom: @detail.nom, plink: @detail.plink, qty: @detail.qty, suspend: @detail.suspend, val: @detail.val, val: @detail.val, vat: @detail.vat, vat_code: @detail.vat_code, why: @detail.why }
    assert_redirected_to detail_path(assigns(:detail))
  end

  test "should destroy detail" do
    assert_difference('Detail.count', -1) do
      delete :destroy, id: @detail
    end

    assert_redirected_to details_path
  end
end
