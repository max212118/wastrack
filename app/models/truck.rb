class Truck < ApplicationRecord
  belongs_to :city_hall
  has_many :users
  has_many :roadsx
  has_one_attached :photo
end
