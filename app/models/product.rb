class Product < ApplicationRecord
  belongs_to :container
  validates :material_type, :product_code, :quantity, :unit_weight, :total_packages, :unit_value, :total_value, presence: true
end
