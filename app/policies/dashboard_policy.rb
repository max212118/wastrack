class DashboardPolicy < ApplicationPolicy
  def container_graph?
    true
  end
end
