class Invoice < ApplicationRecord
  belongs_to :company
  belongs_to :export_company
  has_many :containers
  validates :invoice_number, :currency, :payment_terms, :bank_details, :icoterms, presence: true
end
