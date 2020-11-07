require "application_system_test_case"

class ManufacturersTest < ApplicationSystemTestCase
  setup do
    @manufacturer = manufacturers(:one)
  end

  test "visiting the index" do
    visit manufacturers_url
    assert_selector "h1", text: "Manufacturers"
  end

  test "creating a Manufacturer" do
    visit manufacturers_url
    click_on "New Manufacturer"

    fill_in "City", with: @manufacturer.city
    fill_in "Country or region", with: @manufacturer.country_or_region
    fill_in "Email", with: @manufacturer.email
    fill_in "Name", with: @manufacturer.name
    fill_in "Phone", with: @manufacturer.phone
    fill_in "Postal code", with: @manufacturer.postal_code
    fill_in "State", with: @manufacturer.state
    fill_in "Street address", with: @manufacturer.street_address
    click_on "Create Manufacturer"

    assert_text "Manufacturer was successfully created"
    click_on "Back"
  end

  test "updating a Manufacturer" do
    visit manufacturers_url
    click_on "Edit", match: :first

    fill_in "City", with: @manufacturer.city
    fill_in "Country or region", with: @manufacturer.country_or_region
    fill_in "Email", with: @manufacturer.email
    fill_in "Name", with: @manufacturer.name
    fill_in "Phone", with: @manufacturer.phone
    fill_in "Postal code", with: @manufacturer.postal_code
    fill_in "State", with: @manufacturer.state
    fill_in "Street address", with: @manufacturer.street_address
    click_on "Update Manufacturer"

    assert_text "Manufacturer was successfully updated"
    click_on "Back"
  end

  test "destroying a Manufacturer" do
    visit manufacturers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manufacturer was successfully destroyed"
  end
end
