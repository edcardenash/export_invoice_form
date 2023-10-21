class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :container, null: false, foreign_key: true
      t.string :material_type
      t.string :product_code
      t.integer :quantity
      t.decimal :unit_weight
      t.integer :total_packages
      t.decimal :unit_value
      t.decimal :total_value

      t.timestamps
    end
  end
end
