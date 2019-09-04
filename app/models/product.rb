class Product < ApplicationRecord
  monetize :price_cents
  has_many :ingredients_product
  has_many :ingredients, through: :ingredients_product
  has_many :orders_product
  has_many :orders, through: :orders_product

  enum category: [:breakfast_and_cereal, :canned_goods_and_soups, :dairy_eggs_and_cheese, :frozen_foods, :grains_pasta_and_sides, :fruits_and_vegetables, :cookies_and_snacks, :meat_and_seafood, :beverages, :beer_wine_and_spirits]
end
