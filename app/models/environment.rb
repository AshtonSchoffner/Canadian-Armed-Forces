class Environment < ApplicationRecord
  has_many :ranks

  validates :name_el, :name_fr, uniqueness: true, presence: true
end
