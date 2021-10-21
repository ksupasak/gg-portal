require "test_helper"

class LabOrderItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lab_order_item = lab_order_items(:one)
  end

  test "should get index" do
    get lab_order_items_url
    assert_response :success
  end

  test "should get new" do
    get new_lab_order_item_url
    assert_response :success
  end

  test "should create lab_order_item" do
    assert_difference('LabOrderItem.count') do
      post lab_order_items_url, params: { lab_order_item: { lab_order_id: @lab_order_item.lab_order_id, module_id: @lab_order_item.module_id, module_name: @lab_order_item.module_name, note: @lab_order_item.note, start_at: @lab_order_item.start_at, status: @lab_order_item.status, stop_at: @lab_order_item.stop_at, transaction_item_id: @lab_order_item.transaction_item_id } }
    end

    assert_redirected_to lab_order_item_url(LabOrderItem.last)
  end

  test "should show lab_order_item" do
    get lab_order_item_url(@lab_order_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_lab_order_item_url(@lab_order_item)
    assert_response :success
  end

  test "should update lab_order_item" do
    patch lab_order_item_url(@lab_order_item), params: { lab_order_item: { lab_order_id: @lab_order_item.lab_order_id, module_id: @lab_order_item.module_id, module_name: @lab_order_item.module_name, note: @lab_order_item.note, start_at: @lab_order_item.start_at, status: @lab_order_item.status, stop_at: @lab_order_item.stop_at, transaction_item_id: @lab_order_item.transaction_item_id } }
    assert_redirected_to lab_order_item_url(@lab_order_item)
  end

  test "should destroy lab_order_item" do
    assert_difference('LabOrderItem.count', -1) do
      delete lab_order_item_url(@lab_order_item)
    end

    assert_redirected_to lab_order_items_url
  end
end
