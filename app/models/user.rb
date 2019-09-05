class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :allergens
  has_many :allergen_families, through: :allergens
  has_many :ingredients, through: :allergens

  def allergens_ingredients
    allergens.where.not(ingredient_id: nil)
  end

  def allergens_families
    allergens.where.not(allergen_family_id: nil)
  end
end
