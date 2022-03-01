class Container < ApplicationRecord
  has_many :road_containers
  belongs_to :city_hall
end
