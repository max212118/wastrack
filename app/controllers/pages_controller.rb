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
	# Distance moyenne
	@dist_moyenne = (@roads.map(&:kilometers).sum)/(@containers.count)

	# Containers pleins depuis 2j+

	@containers_red_count = 0
	@containers.each do |container|
		if container.container_filling_levels[-1].level >= 80 &&  container.container_filling_levels[-2].level >= 80
			@containers_red_count += 1
		end
	end

	# moyenne remplissage
	# jugez pas les noms de variable ok ? ça marche c'est l'important


	cfls_by_c = ContainerFillingLevel.all.map {|t| t if t.level == 100}.compact.group_by{|cfl| cfl.container}.map {|m| m.second.reverse.map(&:at)}
	last_array = []
	cfls_by_c.each do |on_compte| 
		x = on_compte.count
		la = on_compte.each_slice(2).to_a.map do |pair_of_cfls|
			unless pair_of_cfls.second == nil
				(pair_of_cfls.first - pair_of_cfls.second)/86400.0
			end
		end
		last_array << la
	end

	real_last_array = []
	last_array.each do |aod|
		aod.compact!
		unless aod.empty?
			real_last_array << (aod.sum / aod.count)
		end
	end

	@average_fill = (real_last_array.sum / real_last_array.count).truncate(1)

  end

end
