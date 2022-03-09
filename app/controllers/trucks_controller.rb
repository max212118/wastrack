class TrucksController < ApplicationController
	def index
   @trucks = policy_scope(Truck)
	end

	def show
	 @truck = Truck.find(params[:id])
	 authorize @truck
	end

  def edit
    @truck = Truck.find(params[:id])
    authorize @truck
  end

  def update
    @truck = Truck.find(params[:id])
    authorize @truck
    if @truck.update(truck_params)
      redirect_to trucks_path
    else
      render :new
    end
  end

  def new
    @truck = Truck.new
    authorize @truck
  end

  def create
    @truck = Truck.new(truck_params)
    authorize @truck
    # @truck.city_hall = current_user.city_hall
    @truck.city_hall = CityHall.first
    if @truck.save
    redirect_to trucks_path
   else
    render :new
   end
  end

  def destroy
    @truck = Truck.find(params[:id])
    @truck.destroy
    authorize @truck
    redirect_to trucks_path
  end

  private

  def truck_params
    params.require(:truck).permit(:plate_number, :consumption, :kilometers)
  end
end
