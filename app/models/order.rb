class Order < ApplicationRecord
  belongs_to :user
  has_many :orders_product
  has_many :products, through: :orders_product
end
