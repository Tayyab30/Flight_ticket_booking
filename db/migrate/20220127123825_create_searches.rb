class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :departure_code
      t.string :arrival_code
      t.integer :start_date
      t.integer :passenger

      t.timestamps
    end
  end
end
