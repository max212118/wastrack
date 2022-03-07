class Road < ApplicationRecord
  has_many :road_containers
  has_many :containers, through: :road_containers
  belongs_to :truck
#   belongs_to :city_hall, through: :truck
end
