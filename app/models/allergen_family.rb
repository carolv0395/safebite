class AllergenFamily < ApplicationRecord
  has_many :allergens
  has_many :ingredients
end
