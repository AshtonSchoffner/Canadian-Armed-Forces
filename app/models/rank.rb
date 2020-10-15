class Rank < ApplicationRecord
  belongs_to :rank_category
  belongs_to :environment

  validates :rank_el, :rank_fr, presence: true
end
