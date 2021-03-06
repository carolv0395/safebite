class Order < ApplicationRecord
  belongs_to :user
  has_many :orders_products, dependent: :destroy
  has_many :products, through: :orders_products
  monetize :total_cents

  enum order_status: [:pending, :paid]
end
