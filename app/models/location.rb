class Location < ApplicationRecord
  has_many :operations

  validates :name_el, :name_fr, uniqueness: true, presence: true
end
