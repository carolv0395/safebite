class Allergen < ApplicationRecord
  belongs_to :user
  has_one :ingredient
  has_one :category
end
