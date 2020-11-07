require 'test_helper'

class ManufacturersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manufacturer = manufacturers(:one)
  end

  test "should get index" do
    get manufacturers_url
    assert_response :success
  end

  test "should get new" do
    get new_manufacturer_url
    assert_response :success
  end

  test "should create manufacturer" do
    assert_difference('Manufacturer.count') do
      post manufacturers_url, params: { manufacturer: { city: @manufacturer.city, country_or_region: @manufacturer.country_or_region, email: @manufacturer.email, name: @manufacturer.name, phone: @manufacturer.phone, postal_code: @manufacturer.postal_code, state: @manufacturer.state, street_address: @manufacturer.street_address } }
    end

    assert_redirected_to manufacturer_url(Manufacturer.last)
  end

  test "should show manufacturer" do
    get manufacturer_url(@manufacturer)
    assert_response :success
  end

  test "should get edit" do
    get edit_manufacturer_url(@manufacturer)
    assert_response :success
  end

  test "should update manufacturer" do
    patch manufacturer_url(@manufacturer), params: { manufacturer: { city: @manufacturer.city, country_or_region: @manufacturer.country_or_region, email: @manufacturer.email, name: @manufacturer.name, phone: @manufacturer.phone, postal_code: @manufacturer.postal_code, state: @manufacturer.state, street_address: @manufacturer.street_address } }
    assert_redirected_to manufacturer_url(@manufacturer)
  end

  test "should destroy manufacturer" do
    assert_difference('Manufacturer.count', -1) do
      delete manufacturer_url(@manufacturer)
    end

    assert_redirected_to manufacturers_url
  end
end
