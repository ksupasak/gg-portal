require "application_system_test_case"

class LabOrderItemsTest < ApplicationSystemTestCase
  setup do
    @lab_order_item = lab_order_items(:one)
  end

  test "visiting the index" do
    visit lab_order_items_url
    assert_selector "h1", text: "Lab Order Items"
  end

  test "creating a Lab order item" do
    visit lab_order_items_url
    click_on "New Lab Order Item"

    fill_in "Lab order", with: @lab_order_item.lab_order_id
    fill_in "Module", with: @lab_order_item.module_id
    fill_in "Module name", with: @lab_order_item.module_name
    fill_in "Note", with: @lab_order_item.note
    fill_in "Start at", with: @lab_order_item.start_at
    fill_in "Status", with: @lab_order_item.status
    fill_in "Stop at", with: @lab_order_item.stop_at
    fill_in "Transaction item", with: @lab_order_item.transaction_item_id
    click_on "Create Lab order item"

    assert_text "Lab order item was successfully created"
    click_on "Back"
  end

  test "updating a Lab order item" do
    visit lab_order_items_url
    click_on "Edit", match: :first

    fill_in "Lab order", with: @lab_order_item.lab_order_id
    fill_in "Module", with: @lab_order_item.module_id
    fill_in "Module name", with: @lab_order_item.module_name
    fill_in "Note", with: @lab_order_item.note
    fill_in "Start at", with: @lab_order_item.start_at
    fill_in "Status", with: @lab_order_item.status
    fill_in "Stop at", with: @lab_order_item.stop_at
    fill_in "Transaction item", with: @lab_order_item.transaction_item_id
    click_on "Update Lab order item"

    assert_text "Lab order item was successfully updated"
    click_on "Back"
  end

  test "destroying a Lab order item" do
    visit lab_order_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lab order item was successfully destroyed"
  end
end
