class OrdersProduct < ApplicationRecord
  monetize :price_cents
  belongs_to :product
  belongs_to :order
end
