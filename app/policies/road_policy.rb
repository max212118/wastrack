class RoadPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    return true if user.present?
  end

  def index?
    return true if user.present?
  end

  def update?
    true
  end
end
