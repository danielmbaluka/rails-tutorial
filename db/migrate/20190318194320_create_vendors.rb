class CreateVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :email_address
      t.string :phone_number
      t.text :address
      t.string :city
      t.string :country
      t.text :notes
      t.string :status

      t.timestamps
    end
  end
end
