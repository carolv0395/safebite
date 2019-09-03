class Allergen < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient, optional: true
  belongs_to :category, optional: true
end
