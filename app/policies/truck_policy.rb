class TruckPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope.where(city_hall: user.city_hall)
      scope.all
    end
  end

  def show?
    true
  end
end
