class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :expenses, :driver, :driver_id
  end
end
