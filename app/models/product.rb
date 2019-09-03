class Product < ApplicationRecord
  belongs_to :category
  monetize :price_cents
  has_many :ingredients, through: :ingredients_product
  has_many :orders, through: :orders_product
end
