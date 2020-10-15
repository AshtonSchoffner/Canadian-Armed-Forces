class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :name_el
      t.string :name_fr
      t.datetime :year_made
      t.integer :quantity
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
