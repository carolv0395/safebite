class Product < ApplicationRecord
  monetize :price_cents
  has_many :ingredients_products
  has_many :ingredients, through: :ingredients_products
  has_many :orders_products
  has_many :orders, through: :orders_products

  enum category: [:breakfast_and_cereal, :canned_goods_and_soups, :dairy_eggs_and_cheese, :frozen_foods, :grains_pasta_and_sides, :fruits_and_vegetables, :cookies_and_snacks, :meat_and_seafood, :beverages, :beer_wine_and_spirits]

  attr_reader :search

  def total_price
    orders_products.sum("(orders_products.price_cents * orders_products.quantity)/100")
  end

  def self.search_allergens(current_user)
    allergen_families_ids = current_user.allergen_families.pluck(:id)
    allergen_families_products_ids = Ingredient.joins(:ingredients_products)
                                               .where(allergen_family_id: allergen_families_ids)
                                               .pluck("ingredients_products.product_id")
    self.where.not(id: allergen_families_products_ids)
  end
end
