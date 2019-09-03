class Ingredient < ApplicationRecord
  has_many :products
  has_one :allergen
end
