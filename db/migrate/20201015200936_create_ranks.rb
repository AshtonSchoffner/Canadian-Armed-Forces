class CreateRanks < ActiveRecord::Migration[6.0]
  def change
    create_table :ranks do |t|
      t.string :rank_el
      t.string :rank_fr
      t.references :rank_category, null: false, foreign_key: true
      t.references :environment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
