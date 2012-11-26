require 'test_helper'

class BeforeIntershipsControllerTest < ActionController::TestCase
  setup do
    @before_intership = before_interships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:before_interships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create before_intership" do
    assert_difference('BeforeIntership.count') do
      post :create, before_intership: { address1: @before_intership.address1, address2: @before_intership.address2, business: @before_intership.business, capital: @before_intership.capital, company: @before_intership.company, delegate: @before_intership.delegate, email: @before_intership.email, intershipsContent: @before_intership.intershipsContent, receivingPerson: @before_intership.receivingPerson, tel: @before_intership.tel, unit: @before_intership.unit }
    end

    assert_redirected_to before_intership_path(assigns(:before_intership))
  end

  test "should show before_intership" do
    get :show, id: @before_intership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @before_intership
    assert_response :success
  end

  test "should update before_intership" do
    put :update, id: @before_intership, before_intership: { address1: @before_intership.address1, address2: @before_intership.address2, business: @before_intership.business, capital: @before_intership.capital, company: @before_intership.company, delegate: @before_intership.delegate, email: @before_intership.email, intershipsContent: @before_intership.intershipsContent, receivingPerson: @before_intership.receivingPerson, tel: @before_intership.tel, unit: @before_intership.unit }
    assert_redirected_to before_intership_path(assigns(:before_intership))
  end

  test "should destroy before_intership" do
    assert_difference('BeforeIntership.count', -1) do
      delete :destroy, id: @before_intership
    end

    assert_redirected_to before_interships_path
  end
end
