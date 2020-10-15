class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :name_el
      t.string :name_fr
      t.text :description_el
      t.text :description_fr
      t.references :equipment_type

      t.timestamps
    end
  end
end
