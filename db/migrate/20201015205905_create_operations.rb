class CreateOperations < ActiveRecord::Migration[6.0]
  def change
    create_table :operations do |t|
      t.string :op_name_el
      t.string :op_name_fr
      t.string :int_name_el
      t.string :int_name_fr
      t.text :description_el
      t.text :description_fr
      t.datetime :start_date
      t.string :end_date
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
