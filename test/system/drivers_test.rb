require "application_system_test_case"

class DriversTest < ApplicationSystemTestCase
  setup do
    @driver = drivers(:one)
  end

  test "visiting the index" do
    visit drivers_url
    assert_selector "h1", text: "Drivers"
  end

  test "creating a Driver" do
    visit drivers_url
    click_on "New Driver"

    fill_in "Address", with: @driver.address
    fill_in "City", with: @driver.city
    fill_in "Country", with: @driver.country
    fill_in "Dl number", with: @driver.dl_number
    fill_in "Email", with: @driver.email
    fill_in "Name", with: @driver.name
    fill_in "Phone number", with: @driver.phone_number
    fill_in "Status", with: @driver.status
    click_on "Create Driver"

    assert_text "Driver was successfully created"
    click_on "Back"
  end

  test "updating a Driver" do
    visit drivers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @driver.address
    fill_in "City", with: @driver.city
    fill_in "Country", with: @driver.country
    fill_in "Dl number", with: @driver.dl_number
    fill_in "Email", with: @driver.email
    fill_in "Name", with: @driver.name
    fill_in "Phone number", with: @driver.phone_number
    fill_in "Status", with: @driver.status
    click_on "Update Driver"

    assert_text "Driver was successfully updated"
    click_on "Back"
  end

  test "destroying a Driver" do
    visit drivers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Driver was successfully destroyed"
  end
end
