require "test_helper"

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { active: @customer.active, address: @customer.address, commercial_address: @customer.commercial_address, commercial_name: @customer.commercial_name, contact_name: @customer.contact_name, email: @customer.email, group_id: @customer.group_id, logo: @customer.logo, name: @customer.name, phone: @customer.phone, registered_at: @customer.registered_at, short: @customer.short, tax_id: @customer.tax_id, title: @customer.title, website: @customer.website, zipcode: @customer.zipcode } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { active: @customer.active, address: @customer.address, commercial_address: @customer.commercial_address, commercial_name: @customer.commercial_name, contact_name: @customer.contact_name, email: @customer.email, group_id: @customer.group_id, logo: @customer.logo, name: @customer.name, phone: @customer.phone, registered_at: @customer.registered_at, short: @customer.short, tax_id: @customer.tax_id, title: @customer.title, website: @customer.website, zipcode: @customer.zipcode } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
