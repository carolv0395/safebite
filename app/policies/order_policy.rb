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

  def destroy?
    true
  end

  def product_delete?
    true
  end

  def shopping_cart?
    true
  end
end
