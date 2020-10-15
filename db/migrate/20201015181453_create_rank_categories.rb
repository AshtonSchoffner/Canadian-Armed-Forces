class CreateRankCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :rank_categories do |t|
      t.string :category_el
      t.string :category_fr

      t.timestamps
    end
  end
end
