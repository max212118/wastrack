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

    @markers = @containers.geocoded.map do |container|
     {
       lat: container.latitude,
       lng: container.longitude,
       info_window: render_to_string(partial: "info_window", locals: { container: container }),
       image_url: helpers.asset_url("garbage.png")
     }
    end
  end


end
