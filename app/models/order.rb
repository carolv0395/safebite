class Order < ApplicationRecord
  belongs_to :user
  has_many :orders_products
  has_many :products, through: :orders_product

  enum order_status: [:pending, :paid]
end
