class RemoveDetailsFromReservations < ActiveRecord::Migration
  def up
    remove_column :reservations, :start_date
    remove_column :reservations, :end_date
  end

  def down
    add_column :reservations, :end_date, :datetime
    add_column :reservations, :start_date, :datetime
  end
end
