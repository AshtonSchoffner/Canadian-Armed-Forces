class RankCategory < ApplicationRecord
  has_many :ranks

  validates :category_el, :category_fr, uniqueness: true, presence: true
end
