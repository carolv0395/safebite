class Ingredient < ApplicationRecord
  has_many :products
  belongs_to :allergen
end
