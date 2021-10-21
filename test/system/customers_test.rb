require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    check "Active" if @customer.active
    fill_in "Address", with: @customer.address
    fill_in "Commercial address", with: @customer.commercial_address
    fill_in "Commercial name", with: @customer.commercial_name
    fill_in "Contact name", with: @customer.contact_name
    fill_in "Email", with: @customer.email
    fill_in "Group", with: @customer.group_id
    fill_in "Logo", with: @customer.logo
    fill_in "Name", with: @customer.name
    fill_in "Phone", with: @customer.phone
    fill_in "Registered at", with: @customer.registered_at
    fill_in "Short", with: @customer.short
    fill_in "Tax", with: @customer.tax_id
    fill_in "Title", with: @customer.title
    fill_in "Website", with: @customer.website
    fill_in "Zipcode", with: @customer.zipcode
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    check "Active" if @customer.active
    fill_in "Address", with: @customer.address
    fill_in "Commercial address", with: @customer.commercial_address
    fill_in "Commercial name", with: @customer.commercial_name
    fill_in "Contact name", with: @customer.contact_name
    fill_in "Email", with: @customer.email
    fill_in "Group", with: @customer.group_id
    fill_in "Logo", with: @customer.logo
    fill_in "Name", with: @customer.name
    fill_in "Phone", with: @customer.phone
    fill_in "Registered at", with: @customer.registered_at
    fill_in "Short", with: @customer.short
    fill_in "Tax", with: @customer.tax_id
    fill_in "Title", with: @customer.title
    fill_in "Website", with: @customer.website
    fill_in "Zipcode", with: @customer.zipcode
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
