class Ingredient < ApplicationRecord
  has_many :ingredients_products
  has_many :products, through: :ingredients_products
  has_one :allergen

  belongs_to :allergen_family, optional: true
end
