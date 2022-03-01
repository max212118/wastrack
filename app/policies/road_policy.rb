class RoadPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    true #il faut mettre: user.type == "worker"
  end

  def update?
    true
  end
end
