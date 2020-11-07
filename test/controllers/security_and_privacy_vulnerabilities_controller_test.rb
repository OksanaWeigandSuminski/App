require 'test_helper'

class SecurityAndPrivacyVulnerabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @security_and_privacy_vulnerability = security_and_privacy_vulnerabilities(:one)
  end

  test "should get index" do
    get security_and_privacy_vulnerabilities_url
    assert_response :success
  end

  test "should get new" do
    get new_security_and_privacy_vulnerability_url
    assert_response :success
  end

  test "should create security_and_privacy_vulnerability" do
    assert_difference('SecurityAndPrivacyVulnerability.count') do
      post security_and_privacy_vulnerabilities_url, params: { security_and_privacy_vulnerability: { advisories: @security_and_privacy_vulnerability.advisories, cve_id: @security_and_privacy_vulnerability.cve_id, description: @security_and_privacy_vulnerability.description, product_id: @security_and_privacy_vulnerability.product_id, severity: @security_and_privacy_vulnerability.severity } }
    end

    assert_redirected_to security_and_privacy_vulnerability_url(SecurityAndPrivacyVulnerability.last)
  end

  test "should show security_and_privacy_vulnerability" do
    get security_and_privacy_vulnerability_url(@security_and_privacy_vulnerability)
    assert_response :success
  end

  test "should get edit" do
    get edit_security_and_privacy_vulnerability_url(@security_and_privacy_vulnerability)
    assert_response :success
  end

  test "should update security_and_privacy_vulnerability" do
    patch security_and_privacy_vulnerability_url(@security_and_privacy_vulnerability), params: { security_and_privacy_vulnerability: { advisories: @security_and_privacy_vulnerability.advisories, cve_id: @security_and_privacy_vulnerability.cve_id, description: @security_and_privacy_vulnerability.description, product_id: @security_and_privacy_vulnerability.product_id, severity: @security_and_privacy_vulnerability.severity } }
    assert_redirected_to security_and_privacy_vulnerability_url(@security_and_privacy_vulnerability)
  end

  test "should destroy security_and_privacy_vulnerability" do
    assert_difference('SecurityAndPrivacyVulnerability.count', -1) do
      delete security_and_privacy_vulnerability_url(@security_and_privacy_vulnerability)
    end

    assert_redirected_to security_and_privacy_vulnerabilities_url
  end
end
