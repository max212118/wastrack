class DashboardController < ApplicationController
  def container_graph
    authorize(:dashboard, :container_graph?)
  end
end
