class ContainersController < ApplicationController

    def index
       @containers = policy_scope(Container)
    #    @markers = @containers.geocoded.map do |container|
    #     {
    #       lat: container.latitude,
    #       lng: container.longitude
    #     }
    end

    def new
        @container = Container.new
        authorize @container
    end

end
