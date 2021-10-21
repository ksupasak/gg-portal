require "application_system_test_case"

class CustomerUsersTest < ApplicationSystemTestCase
  setup do
    @customer_user = customer_users(:one)
  end

  test "visiting the index" do
    visit customer_users_url
    assert_selector "h1", text: "Customer Users"
  end

  test "creating a Customer user" do
    visit customer_users_url
    click_on "New Customer User"

    fill_in "Customer", with: @customer_user.customer_id
    fill_in "Registered at", with: @customer_user.registered_at
    fill_in "User", with: @customer_user.user_id
    click_on "Create Customer user"

    assert_text "Customer user was successfully created"
    click_on "Back"
  end

  test "updating a Customer user" do
    visit customer_users_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @customer_user.customer_id
    fill_in "Registered at", with: @customer_user.registered_at
    fill_in "User", with: @customer_user.user_id
    click_on "Update Customer user"

    assert_text "Customer user was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer user" do
    visit customer_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer user was successfully destroyed"
  end
end
