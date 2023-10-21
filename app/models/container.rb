class Container < ApplicationRecord
  belongs_to :invoice
  has_many :products
  validates :container_number, :packing, :total_gross_weight, presence: true
end
