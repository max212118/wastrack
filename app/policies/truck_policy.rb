class TruckPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(city_hall_id: user.city_hall_id)
      scope.all
    end
  end

  def show?
    true
  end

  def index?
    true
  end

  def update?
    return true if user.employee_category == "city employee"
    # return true if user.present?
  end

  def destroy?
    true
  end

  def new?
    #user.employee_category == "city employee"
    return true if user.present?
  end
  def create?
    return true if user.present?
  end
end
