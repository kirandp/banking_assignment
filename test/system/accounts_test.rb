require "application_system_test_case"

class AccountsTest < ApplicationSystemTestCase
  setup do
    @account = accounts(:one)
  end

  test "visiting the index" do
    visit accounts_url
    assert_selector "h1", text: "Accounts"
  end

  test "creating a Account" do
    visit accounts_url
    click_on "New Account"

    fill_in "Ac no", with: @account.ac_no
    fill_in "Ac type", with: @account.ac_type
    fill_in "Balance", with: @account.balance
    fill_in "Closing", with: @account.closing
    fill_in "Opening date", with: @account.opening_date
    fill_in "Status", with: @account.status
    click_on "Create Account"

    assert_text "Account was successfully created"
    click_on "Back"
  end

  test "updating a Account" do
    visit accounts_url
    click_on "Edit", match: :first

    fill_in "Ac no", with: @account.ac_no
    fill_in "Ac type", with: @account.ac_type
    fill_in "Balance", with: @account.balance
    fill_in "Closing", with: @account.closing
    fill_in "Opening date", with: @account.opening_date
    fill_in "Status", with: @account.status
    click_on "Update Account"

    assert_text "Account was successfully updated"
    click_on "Back"
  end

  test "destroying a Account" do
    visit accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account was successfully destroyed"
  end
end
