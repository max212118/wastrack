class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  skip_after_action :verify_authorized


  def home
    # landing page
  end

  def dashboard
    @containers = Container.all
    @trucks = Truck.all
    @roads = Road.all
    @road_containers = RoadContainer.all
  end
end
