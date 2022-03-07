class TrucksController < ApplicationController

	def index
		
	end

	def show
		@truck = Truck.find(params[:id])
		authorize @truck
	end
end
