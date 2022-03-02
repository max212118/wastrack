class Road < ApplicationRecord
  has_many :road_containers
  belongs_to :truck
end
