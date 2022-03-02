class RoadsController < ApplicationController
  
  
  def show
    @road = Road.find(params[:id])
    authorize @road
    # @containers = policy_scope(Container)
    @containers = @road.containers
    @markers = @containers.geocoded.map do |container|
     {
       lat: container.latitude,
       lng: container.longitude
     }
    # map
    end
  end

  def update
    # ajout du truck à la road (en début de journée)
  end
end
