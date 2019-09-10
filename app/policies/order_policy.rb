class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true    
  end

  def category?
    true
  end

  def add_product_quantity_quick_shop?
    true
  end

  def remove_product_quantity_quick_shop?
    true
  end

  def add_product_quantity?
    true
  end

  def remove_product_quantity?
    true
  end

  def add_product_quantity_checkout?
    true
  end

  def remove_product_quantity_checkout?
    true
  end

  def product_delete?
    true
  end

  def shopping_cart?
    true
  end
end
