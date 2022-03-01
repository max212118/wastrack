class CityHall < ApplicationRecord
  has_many :trucks
  has_many :containers
end
