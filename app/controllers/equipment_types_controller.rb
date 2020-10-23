class EquipmentTypesController < ApplicationController
  def show
    @equipment_type = EquipmentType.find(params[:id])
  end
end
