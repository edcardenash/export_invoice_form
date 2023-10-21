class Company < ApplicationRecord
  has_many :invoices
  validates :name, :address, :phone, :email, presence: true
end
