class CityHall < ApplicationRecord
  has_many :trucks
  has_many :containers
  has_one_attached :photo
end
