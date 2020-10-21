class RanksController < ApplicationController
  def index
    @ranks = Rank.includes(:rank_category, :environment)
  end

  def show
    @rank = Rank.find(params[:id])
  end
end
