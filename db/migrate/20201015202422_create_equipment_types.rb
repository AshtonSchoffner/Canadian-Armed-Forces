class CreateEquipmentTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment_types do |t|
      t.string :type_el
      t.string :type_fr

      t.timestamps
    end
  end
end
