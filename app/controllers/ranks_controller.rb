class RanksController < ApplicationController
  def index
    @ranks = Rank.includes(:rank_category, :environment)
  end

  def show
    @rank = Rank.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @ranks = Rank.where("rank_el LIKE ? OR rank_fr LIKE ?", wildcard_search, wildcard_search)
  end
end
