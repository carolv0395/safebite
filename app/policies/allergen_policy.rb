class AllergenPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def edit_families?
    true
  end

  def update_families?
    true
  end
end
