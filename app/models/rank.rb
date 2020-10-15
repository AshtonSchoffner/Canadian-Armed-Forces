class Rank < ApplicationRecord
  belongs_to :rank_category
  belongs_to :environment
end
