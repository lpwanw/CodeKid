# frozen_string_literal: true

FactoryBot.define do
  factory :product_inventory do
    product
    size { "40" }
    quantity { 1 }
    color { "ff0000" }
  end
end
