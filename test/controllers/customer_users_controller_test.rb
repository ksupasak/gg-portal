require "test_helper"

class CustomerUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_user = customer_users(:one)
  end

  test "should get index" do
    get customer_users_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_user_url
    assert_response :success
  end

  test "should create customer_user" do
    assert_difference('CustomerUser.count') do
      post customer_users_url, params: { customer_user: { customer_id: @customer_user.customer_id, registered_at: @customer_user.registered_at, user_id: @customer_user.user_id } }
    end

    assert_redirected_to customer_user_url(CustomerUser.last)
  end

  test "should show customer_user" do
    get customer_user_url(@customer_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_user_url(@customer_user)
    assert_response :success
  end

  test "should update customer_user" do
    patch customer_user_url(@customer_user), params: { customer_user: { customer_id: @customer_user.customer_id, registered_at: @customer_user.registered_at, user_id: @customer_user.user_id } }
    assert_redirected_to customer_user_url(@customer_user)
  end

  test "should destroy customer_user" do
    assert_difference('CustomerUser.count', -1) do
      delete customer_user_url(@customer_user)
    end

    assert_redirected_to customer_users_url
  end
end
