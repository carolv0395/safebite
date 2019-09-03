class Ingredient < ApplicationRecord
  has_many :ingredients_product
  has_many :products, through: :ingredients_product
  has_one :allergens, optional: true
  belongs_to :allergen_family, optional: true
end
