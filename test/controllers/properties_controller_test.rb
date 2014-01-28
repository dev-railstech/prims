require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post :create, property: { account_manager_id: @property.account_manager_id, address_1: @property.address_1, address_2: @property.address_2, address_3: @property.address_3, address_4: @property.address_4, bought_from: @property.bought_from, client_dv: @property.client_dv, client_dx: @property.client_dx, client_fax: @property.client_fax, client_no_visits: @property.client_no_visits, code: @property.code, contract_billed: @property.contract_billed, contract_collect: @property.contract_collect, contract_dealer: @property.contract_dealer, contract_renew: @property.contract_renew, contract_type: @property.contract_type, contract_vis_10: @property.contract_vis_10, contract_vis_11: @property.contract_vis_11, contract_vis_12: @property.contract_vis_12, contract_vis_1: @property.contract_vis_1, contract_vis_2: @property.contract_vis_2, contract_vis_3: @property.contract_vis_3, contract_vis_4: @property.contract_vis_4, contract_vis_5: @property.contract_vis_5, contract_vis_6: @property.contract_vis_6, contract_vis_7: @property.contract_vis_7, contract_vis_8: @property.contract_vis_8, contract_vis_9: @property.contract_vis_9, date_m_visit: @property.date_m_visit, date_on: @property.date_on, description: @property.description, last_person: @property.last_person, last_val: @property.last_val, last_val_date: @property.last_val_date, loan_amount: @property.loan_amount, loan_with: @property.loan_with, name: @property.name, portfolio: @property.portfolio, post_code: @property.post_code, property_last_bill: @property.property_last_bill, property_last_bill_val: @property.property_last_bill_val, property_sell_val: @property.property_sell_val, property_sold: @property.property_sold, property_sold_date: @property.property_sold_date, purchase_date: @property.purchase_date, purchase_price: @property.purchase_price, tel_1: @property.tel_1, tel_2: @property.tel_2, total_value: @property.total_value, vat: @property.vat }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  test "should show property" do
    get :show, id: @property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property
    assert_response :success
  end

  test "should update property" do
    patch :update, id: @property, property: { account_manager_id: @property.account_manager_id, address_1: @property.address_1, address_2: @property.address_2, address_3: @property.address_3, address_4: @property.address_4, bought_from: @property.bought_from, client_dv: @property.client_dv, client_dx: @property.client_dx, client_fax: @property.client_fax, client_no_visits: @property.client_no_visits, code: @property.code, contract_billed: @property.contract_billed, contract_collect: @property.contract_collect, contract_dealer: @property.contract_dealer, contract_renew: @property.contract_renew, contract_type: @property.contract_type, contract_vis_10: @property.contract_vis_10, contract_vis_11: @property.contract_vis_11, contract_vis_12: @property.contract_vis_12, contract_vis_1: @property.contract_vis_1, contract_vis_2: @property.contract_vis_2, contract_vis_3: @property.contract_vis_3, contract_vis_4: @property.contract_vis_4, contract_vis_5: @property.contract_vis_5, contract_vis_6: @property.contract_vis_6, contract_vis_7: @property.contract_vis_7, contract_vis_8: @property.contract_vis_8, contract_vis_9: @property.contract_vis_9, date_m_visit: @property.date_m_visit, date_on: @property.date_on, description: @property.description, last_person: @property.last_person, last_val: @property.last_val, last_val_date: @property.last_val_date, loan_amount: @property.loan_amount, loan_with: @property.loan_with, name: @property.name, portfolio: @property.portfolio, post_code: @property.post_code, property_last_bill: @property.property_last_bill, property_last_bill_val: @property.property_last_bill_val, property_sell_val: @property.property_sell_val, property_sold: @property.property_sold, property_sold_date: @property.property_sold_date, purchase_date: @property.purchase_date, purchase_price: @property.purchase_price, tel_1: @property.tel_1, tel_2: @property.tel_2, total_value: @property.total_value, vat: @property.vat }
    assert_redirected_to property_path(assigns(:property))
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property
    end

    assert_redirected_to properties_path
  end
end
