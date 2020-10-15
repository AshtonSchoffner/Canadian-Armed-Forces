class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name_el
      t.string :name_fr

      t.timestamps
    end
  end
end
