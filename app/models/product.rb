# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :product_inventories, dependent: :destroy

  enum category: {
    accessories: "accessories",
    shoes: "shoes",
    top: "top"
  }

  enum gender: {
    male: "male",
    female: "female"
  }

  validates :name, presence: true

  validates :uid, presence: true
  validates :uid, uniqueness: true

  validates :price, presence: true

  validates :category, presence: true
  validates :category, inclusion: { in: Product.categories.keys }

  validates :gender, inclusion: { in: Product.genders.keys }, allow_nil: true
end
