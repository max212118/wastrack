class ContainersController < ApplicationController

    def index
       @containers = policy_scope(Container)
    end

    def new
        @container = Container.new
        authorize @container
    end

end
