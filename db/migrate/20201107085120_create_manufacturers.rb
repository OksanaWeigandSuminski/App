class CreateManufacturers < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :country_or_region
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
