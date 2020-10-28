class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.includes(:equipment_type).page(params[:page]).per(15)
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @equipment = Equipment.where("name_el LIKE ? OR name_fr LIKE ?", wildcard_search, wildcard_search)
  end
end
