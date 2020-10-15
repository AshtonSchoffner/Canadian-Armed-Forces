class CreateEnvironments < ActiveRecord::Migration[6.0]
  def change
    create_table :environments do |t|
      t.string :environment_el
      t.string :environment_fr

      t.timestamps
    end
  end
end
