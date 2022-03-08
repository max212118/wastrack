class CityHall < ApplicationRecord
  has_many :trucks
  has_many :containers
  has_many :roads, through: :trucks
  has_one_attached :photo
end
