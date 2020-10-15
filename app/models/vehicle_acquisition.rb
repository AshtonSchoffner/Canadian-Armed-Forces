class VehicleAcquisition < ApplicationRecord
  belongs_to :vehicle
  belongs_to :organization
end
