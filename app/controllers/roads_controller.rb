class RoadsController < ApplicationController
	def index
    @roads = policy_scope(Road)
	end

  def show
    @road = Road.find(params[:id])
    authorize @road
    # @containers = policy_scope(Container)
    @containers = @road.containers
    @markers = @containers.geocoded.map do |container|
     {
       lat: container.latitude,
       lng: container.longitude,
       info_window: render_to_string(partial: "info_window", locals: { container: container }),
       image_url: helpers.asset_url("garbage.png")
     }
    # map
    end
  end

  def update
    # ajout du truck à la road (en début de journée)
  end
end
