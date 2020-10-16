class Environment < ApplicationRecord
  has_many :ranks

  validates :environment_el, :environment_fr, uniqueness: true, presence: true
end
