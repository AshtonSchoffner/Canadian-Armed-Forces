class Operation < ApplicationRecord
  belongs_to :location

  validates :op_name_el, :op_name_fr, presence: true
  validates :description_el, :description_fr, :start_date, :end_date, presence: true
end
