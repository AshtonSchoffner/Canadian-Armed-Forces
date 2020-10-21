class ChangeColumnStartDateOperations < ActiveRecord::Migration[6.0]
  def change
    change_column :operations, :start_date, :string
  end
end
