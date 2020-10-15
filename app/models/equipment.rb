class Equipment < ApplicationRecord
  belongs_to :equipment_type

  validates :name_el, :name_fr, :description_fr, :description_el, presence: true
end
