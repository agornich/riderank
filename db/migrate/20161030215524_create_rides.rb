class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
        t.integer :ride_id
        t.decimal :price
        t.decimal :distance
        t.string :taxiprovider_id, null: false
        t.string :start_address
        t.string :destination_address
        t.timestamps null: false
    end
  end
end
