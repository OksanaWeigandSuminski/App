class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :barcode
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
