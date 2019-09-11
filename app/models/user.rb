class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :avatar, AvatarUploader

  has_many :orders, dependent: :destroy
  has_many :allergens, dependent: :destroy
  has_many :allergen_families, through: :allergens
  has_many :ingredients, through: :allergens

  def pending_order_in_cart
    pending_order = orders.where(order_status: :pending).first
    unless pending_order
      pending_order = Order.create(user: self, order_status: :pending)
    end

    pending_order
  end
end
