require "application_system_test_case"

class VendorsTest < ApplicationSystemTestCase
  setup do
    @vendor = vendors(:one)
  end

  test "visiting the index" do
    visit vendors_url
    assert_selector "h1", text: "Vendors"
  end

  test "creating a Vendor" do
    visit vendors_url
    click_on "New Vendor"

    fill_in "Address", with: @vendor.address
    fill_in "City", with: @vendor.city
    fill_in "Country", with: @vendor.country
    fill_in "Email address", with: @vendor.email_address
    fill_in "Name", with: @vendor.name
    fill_in "Notes", with: @vendor.notes
    fill_in "Phone number", with: @vendor.phone_number
    fill_in "Status", with: @vendor.status
    click_on "Create Vendor"

    assert_text "Vendor was successfully created"
    click_on "Back"
  end

  test "updating a Vendor" do
    visit vendors_url
    click_on "Edit", match: :first

    fill_in "Address", with: @vendor.address
    fill_in "City", with: @vendor.city
    fill_in "Country", with: @vendor.country
    fill_in "Email address", with: @vendor.email_address
    fill_in "Name", with: @vendor.name
    fill_in "Notes", with: @vendor.notes
    fill_in "Phone number", with: @vendor.phone_number
    fill_in "Status", with: @vendor.status
    click_on "Update Vendor"

    assert_text "Vendor was successfully updated"
    click_on "Back"
  end

  test "destroying a Vendor" do
    visit vendors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vendor was successfully destroyed"
  end
end
