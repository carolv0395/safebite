class AllergenFamily < ApplicationRecord
  has_many :allergens
  has_many :users, through: :allergens
  has_many :ingredients
end
