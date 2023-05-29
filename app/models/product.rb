class Product < ApplicationRecord
  enum category: {
    accessories: "accessories",
    shoes: "shoes",
    top: "top",
  }

  validates :name, presence: true

  validates :uid, presence: true
  validates :uid, uniqueness: true

  validates :price, presence: true

  validates :category, presence: true
  validates :category, inclusion: { in: Product.categories.keys }
end
