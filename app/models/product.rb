class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  monetize :price_cents
end
