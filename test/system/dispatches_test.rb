require "application_system_test_case"

class DispatchesTest < ApplicationSystemTestCase
  setup do
    @dispatch = dispatches(:one)
  end

  test "visiting the index" do
    visit dispatches_url
    assert_selector "h1", text: "Dispatches"
  end

  test "creating a Dispatch" do
    visit dispatches_url
    click_on "New Dispatch"

    fill_in "Amount", with: @dispatch.amount
    fill_in "Customer", with: @dispatch.customer
    fill_in "Description", with: @dispatch.description
    fill_in "Dispatch date", with: @dispatch.dispatch_date
    fill_in "Driver", with: @dispatch.driver
    fill_in "Status", with: @dispatch.status
    fill_in "Vehicle", with: @dispatch.vehicle
    click_on "Create Dispatch"

    assert_text "Dispatch was successfully created"
    click_on "Back"
  end

  test "updating a Dispatch" do
    visit dispatches_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @dispatch.amount
    fill_in "Customer", with: @dispatch.customer
    fill_in "Description", with: @dispatch.description
    fill_in "Dispatch date", with: @dispatch.dispatch_date
    fill_in "Driver", with: @dispatch.driver
    fill_in "Status", with: @dispatch.status
    fill_in "Vehicle", with: @dispatch.vehicle
    click_on "Update Dispatch"

    assert_text "Dispatch was successfully updated"
    click_on "Back"
  end

  test "destroying a Dispatch" do
    visit dispatches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dispatch was successfully destroyed"
  end
end
