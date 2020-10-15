class CreateVehicleAcquisitions < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicle_acquisitions do |t|
      t.string :year_made
      t.integer :quantity
      t.references :vehicle, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
