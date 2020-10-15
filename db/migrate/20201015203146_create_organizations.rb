class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name_el
      t.string :name_fr

      t.timestamps
    end
  end
end
