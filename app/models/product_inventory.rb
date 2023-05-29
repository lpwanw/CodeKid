# frozen_string_literal: true

class ProductInventory < ApplicationRecord
  belongs_to :product

  validates :quantity, presence: true
  validates :product_id, uniqueness: { scope: %i[size color] }
end
