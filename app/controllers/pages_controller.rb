class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  skip_after_action :verify_authorized


  def home
    # landing page
  end

  def economies
	  
  end

  def dashboard
	@city_hall = CityHall.first
    @containers = Container.all
    @trucks = Truck.all
    @roads = @trucks.map(&:roads).flatten
    @road_containers = RoadContainer.all

    @markers = @containers.geocoded.map do |container|
     {
       lat: container.latitude,
       lng: container.longitude,
       info_window: render_to_string(partial: "info_window", locals: { container: container }),
       image_url: helpers.asset_url(container.map_icon)
     }

    end
	count = @containers.count
	sum = @roads.map(&:kilometers).sum
	@dist_moyenne = sum/count

	raise
  end
end
