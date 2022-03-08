class Container < ApplicationRecord
  has_many :road_containers
  has_many :container_filling_levels, dependent: :destroy
  belongs_to :city_hall
  has_one_attached :photo
  geocoded_by :location
  
  after_validation :geocode, if: :will_save_change_to_location?

  def map_icon
    return "garbage-fire.png" if temperature > 50
    return "garbage-orange.png" if filling_level >= 80 && filling_level < 90
    return "garbage_red.png" if filling_level >= 90
    return "garbage_green.png"
  end
end
