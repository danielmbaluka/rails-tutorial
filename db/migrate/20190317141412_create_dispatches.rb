class CreateDispatches < ActiveRecord::Migration[5.2]
  def change
    create_table :dispatches do |t|
      t.integer :vehicle_id
      t.integer :driver_id
      t.date :dispatch_date
      t.string :customer_id
      t.float :amount
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
