class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.date :date
      t.integer :vendor_id
      t.integer :category_id
      t.integer :vehicle_id
      t.integer :driver
      t.float :amount
      t.text :description

      t.timestamps
    end
  end
end
