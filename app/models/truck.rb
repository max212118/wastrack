class Truck < ApplicationRecord
  belongs_to :city_hall
  has_many :roads
end
