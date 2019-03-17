class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|

    	t.string :registration
    	t.string :make
    	t.string :model
    	t.string :color
    	t.string :yom
    	t.text :description
    	t.string :mileage
      	t.timestamps

    end
  end
end
