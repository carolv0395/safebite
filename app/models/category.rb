class Category < ApplicationRecord
  has_many :products
  belong_to :allergen
end
