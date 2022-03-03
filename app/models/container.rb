class Container < ApplicationRecord
  has_many :road_containers
  has_many :container_filling_levels, dependent: :destroy
  belongs_to :city_hall

  geocoded_by :location
  
  after_validation :geocode, if: :will_save_change_to_location?
end
