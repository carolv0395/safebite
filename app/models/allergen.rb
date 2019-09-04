class Allergen < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient
  belongs_to :allergen_family, optional: true
end
