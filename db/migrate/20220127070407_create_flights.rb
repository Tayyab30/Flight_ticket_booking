class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :departure_code
      t.string :arrival_code 
      t.integer :total_seats
      t.integer :available_seats
      t.integer :start_date
      t.string :duration
      t.belongs_to :airport

      t.timestamps
    end
  end
end
