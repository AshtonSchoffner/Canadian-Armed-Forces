class Organization < ApplicationRecord
  has_many :vehicle_acquisitions

  validates :name_el, :name_fr, presence: true, uniqueness: true
end
