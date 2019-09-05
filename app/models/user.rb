class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :allergens

  def pending_order_in_cart
    pending_order = orders.where(order_status: :pending).first
    unless pending_order
      pending_order = Order.create(user: self, order_status: :pending)
    end
    return pending_order
  end
end
