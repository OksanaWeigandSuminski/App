require "application_system_test_case"

class SecurityAndPrivacyVulnerabilitiesTest < ApplicationSystemTestCase
  setup do
    @security_and_privacy_vulnerability = security_and_privacy_vulnerabilities(:one)
  end

  test "visiting the index" do
    visit security_and_privacy_vulnerabilities_url
    assert_selector "h1", text: "Security And Privacy Vulnerabilities"
  end

  test "creating a Security and privacy vulnerability" do
    visit security_and_privacy_vulnerabilities_url
    click_on "New Security And Privacy Vulnerability"

    fill_in "Advisories", with: @security_and_privacy_vulnerability.advisories
    fill_in "Cve", with: @security_and_privacy_vulnerability.cve_id
    fill_in "Description", with: @security_and_privacy_vulnerability.description
    fill_in "Product", with: @security_and_privacy_vulnerability.product_id
    fill_in "Severity", with: @security_and_privacy_vulnerability.severity
    click_on "Create Security and privacy vulnerability"

    assert_text "Security and privacy vulnerability was successfully created"
    click_on "Back"
  end

  test "updating a Security and privacy vulnerability" do
    visit security_and_privacy_vulnerabilities_url
    click_on "Edit", match: :first

    fill_in "Advisories", with: @security_and_privacy_vulnerability.advisories
    fill_in "Cve", with: @security_and_privacy_vulnerability.cve_id
    fill_in "Description", with: @security_and_privacy_vulnerability.description
    fill_in "Product", with: @security_and_privacy_vulnerability.product_id
    fill_in "Severity", with: @security_and_privacy_vulnerability.severity
    click_on "Update Security and privacy vulnerability"

    assert_text "Security and privacy vulnerability was successfully updated"
    click_on "Back"
  end

  test "destroying a Security and privacy vulnerability" do
    visit security_and_privacy_vulnerabilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Security and privacy vulnerability was successfully destroyed"
  end
end
