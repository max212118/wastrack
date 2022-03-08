class TrucksController < ApplicationController

	def index
    @trucks = policy_scope(Truck)
	end

	def show
		@truck = Truck.find(params[:id])
		authorize @truck
	end
end
