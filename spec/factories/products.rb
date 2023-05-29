# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { FFaker::Product.product_name }
    uid { FFaker::Guid.guid }
    price { rand(1000..10_000) }
    category { Product.categories.keys.sample }
  end
end
