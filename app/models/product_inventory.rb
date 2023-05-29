class ProductInventory < ApplicationRecord
  belongs_to :product

  validates :quantity, presence: true
  validates :product_id, uniqueness: { scope: [:size, :color] }
end
