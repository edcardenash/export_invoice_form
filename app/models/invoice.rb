class Invoice < ApplicationRecord
  belongs_to :company
  belongs_to :export_company
end
