class CreateTicketDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :ticket_details do |t|
      t.string :status
      t.belongs_to :passenger
      t.belongs_to :flight

      t.timestamps
    end
  end
end
