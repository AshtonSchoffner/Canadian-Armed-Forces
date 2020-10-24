class OperationsController < ApplicationController
  def index
    @operations = Operation.includes(:location).order("start_date DESC")
  end

  def show
    @operation = Operation.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @operations = Operation.where(
      "op_name_el LIKE ? OR op_name_fr LIKE ?", wildcard_search, wildcard_search
    ).order("start_date DESC")
  end
end
