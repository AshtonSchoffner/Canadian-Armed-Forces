class RevertStartDateColumnOperations < ActiveRecord::Migration[6.0]
  def change
    change_column :operations, :start_date, :DateTime
  end
end
