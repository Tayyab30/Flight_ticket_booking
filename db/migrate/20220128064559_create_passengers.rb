class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :address
      t.integer :phone_number

      t.timestamps
    end
  end
end
