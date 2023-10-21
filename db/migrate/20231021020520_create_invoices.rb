class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :invoice_number
      t.string :our_ref
      t.string :currency
      t.string :payment_terms
      t.string :bank_details
      t.string :icoterms
      t.references :company, null: false, foreign_key: true
      t.references :export_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
