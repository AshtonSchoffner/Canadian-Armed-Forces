class Vehicle < ApplicationRecord
  has_many :vehicle_acquisitions

  validates :name, presence: true, uniqueness: true
end
