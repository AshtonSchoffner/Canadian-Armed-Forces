class VehicleAcquisition < ApplicationRecord
  belongs_to :vehicle
  belongs_to :organization

  validates :year_made, :quantity, presence: true
  validates :quantity, numericality: { only_integer: true }
end
