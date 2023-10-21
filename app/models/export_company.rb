class ExportCompany < ApplicationRecord
  has_many :invoices
  validates :name, :rut, :address, presence: true
end
