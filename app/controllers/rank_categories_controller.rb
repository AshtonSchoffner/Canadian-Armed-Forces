class RankCategoriesController < ApplicationController
  def show
    @rank_category = RankCategory.find(params[:id])
  end
end
