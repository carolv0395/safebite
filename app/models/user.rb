class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :avatar, AvatarUploader
       
  has_many :orders
  has_many :allergens
  has_many :allergen_families, through: :allergens
  has_many :ingredients, through: :allergens
  
  def pending_order_in_cart
    pending_order = orders.where(order_status: :pending).first
    unless pending_order
      pending_order = Order.create(user: self, order_status: :pending)
    end
    return pending_order
  end
    
  def allergens_ingredients
    allergens.where.not(ingredient_id: nil)
  end

  def allergens_families
    allergens.where.not(allergen_family_id: nil)
  end
end
