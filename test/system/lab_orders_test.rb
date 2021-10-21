require "application_system_test_case"

class LabOrdersTest < ApplicationSystemTestCase
  setup do
    @lab_order = lab_orders(:one)
  end

  test "visiting the index" do
    visit lab_orders_url
    assert_selector "h1", text: "Lab Orders"
  end

  test "creating a Lab order" do
    visit lab_orders_url
    click_on "New Lab Order"

    fill_in "Customer", with: @lab_order.customer_id
    fill_in "Date", with: @lab_order.date
    fill_in "Note", with: @lab_order.note
    fill_in "Status", with: @lab_order.status
    click_on "Create Lab order"

    assert_text "Lab order was successfully created"
    click_on "Back"
  end

  test "updating a Lab order" do
    visit lab_orders_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @lab_order.customer_id
    fill_in "Date", with: @lab_order.date
    fill_in "Note", with: @lab_order.note
    fill_in "Status", with: @lab_order.status
    click_on "Update Lab order"

    assert_text "Lab order was successfully updated"
    click_on "Back"
  end

  test "destroying a Lab order" do
    visit lab_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lab order was successfully destroyed"
  end
end
