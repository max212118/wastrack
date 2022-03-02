class RoadPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(city_hall_id: user.city_hall_id)
      scope.all
    end
  end

  def show?
    return true if user.present? && user.employee_category == "collector"
  end

  def update?
    true
  end
end
