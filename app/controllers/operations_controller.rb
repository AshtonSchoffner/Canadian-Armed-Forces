class OperationsController < ApplicationController
  def index
    @operations = Operation.includes(:location).order("start_date DESC")
  end

  def show
    @operation = Operation.find(params[:id])
  end
end
