class TrucksController < ApplicationController
  def show
    @truck = Truck.find(params[:id])
    authorize @truck
  end
end
