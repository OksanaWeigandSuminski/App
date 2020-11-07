class CreateSecurityAndPrivacyVulnerabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :security_and_privacy_vulnerabilities do |t|
      t.integer :product_id
      t.string :cve_id
      t.string :severity
      t.text :description
      t.text :advisories

      t.timestamps
    end
  end
end
