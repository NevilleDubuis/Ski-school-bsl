class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :client_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
