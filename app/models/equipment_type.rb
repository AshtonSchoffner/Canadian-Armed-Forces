class EquipmentType < ApplicationRecord
  has_many :equipment

  validates :type_el, :type_fr, presence: true, unique: true
end
