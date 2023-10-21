class CreateExportCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :export_companies do |t|
      t.string :name
      t.string :rut
      t.string :address

      t.timestamps
    end
  end
end
