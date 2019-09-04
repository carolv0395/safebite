class IngredientsProduct < ApplicationRecord
  belongs_to :products
  belongs_to :ingredient
end
