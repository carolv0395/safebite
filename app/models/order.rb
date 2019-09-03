class Order < ApplicationRecord
  belongs_to :user
  has_many :products, through: :orders_product
end
