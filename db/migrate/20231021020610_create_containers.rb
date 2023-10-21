class CreateContainers < ActiveRecord::Migration[7.0]
  def change
    create_table :containers do |t|
      t.string :container_number
      t.integer :packing
      t.decimal :total_gross_weight
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
