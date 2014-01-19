require 'test_helper'

class DealersControllerTest < ActionController::TestCase
  setup do
    @dealer = dealers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealer" do
    assert_difference('Dealer.count') do
      post :create, dealer: { add_1: @dealer.add_1, add_2: @dealer.add_2, add_3: @dealer.add_3, code: @dealer.code, date_on: @dealer.date_on, dx: @dealer.dx, email_1: @dealer.email_1, email_2: @dealer.email_2, email_3: @dealer.email_3, fax: @dealer.fax, name: @dealer.name, post_code: @dealer.post_code, tel: @dealer.tel }
    end

    assert_redirected_to dealer_path(assigns(:dealer))
  end

  test "should show dealer" do
    get :show, id: @dealer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealer
    assert_response :success
  end

  test "should update dealer" do
    patch :update, id: @dealer, dealer: { add_1: @dealer.add_1, add_2: @dealer.add_2, add_3: @dealer.add_3, code: @dealer.code, date_on: @dealer.date_on, dx: @dealer.dx, email_1: @dealer.email_1, email_2: @dealer.email_2, email_3: @dealer.email_3, fax: @dealer.fax, name: @dealer.name, post_code: @dealer.post_code, tel: @dealer.tel }
    assert_redirected_to dealer_path(assigns(:dealer))
  end

  test "should destroy dealer" do
    assert_difference('Dealer.count', -1) do
      delete :destroy, id: @dealer
    end

    assert_redirected_to dealers_path
  end
end
