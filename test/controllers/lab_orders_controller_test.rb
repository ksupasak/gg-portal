require "test_helper"

class LabOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lab_order = lab_orders(:one)
  end

  test "should get index" do
    get lab_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_lab_order_url
    assert_response :success
  end

  test "should create lab_order" do
    assert_difference('LabOrder.count') do
      post lab_orders_url, params: { lab_order: { customer_id: @lab_order.customer_id, date: @lab_order.date, note: @lab_order.note, status: @lab_order.status } }
    end

    assert_redirected_to lab_order_url(LabOrder.last)
  end

  test "should show lab_order" do
    get lab_order_url(@lab_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_lab_order_url(@lab_order)
    assert_response :success
  end

  test "should update lab_order" do
    patch lab_order_url(@lab_order), params: { lab_order: { customer_id: @lab_order.customer_id, date: @lab_order.date, note: @lab_order.note, status: @lab_order.status } }
    assert_redirected_to lab_order_url(@lab_order)
  end

  test "should destroy lab_order" do
    assert_difference('LabOrder.count', -1) do
      delete lab_order_url(@lab_order)
    end

    assert_redirected_to lab_orders_url
  end
end
