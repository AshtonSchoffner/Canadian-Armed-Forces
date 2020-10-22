class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.includes(:equipment_type)
  end

  def show
    @equipment = Equipment.find(params[:id])
  end
end
