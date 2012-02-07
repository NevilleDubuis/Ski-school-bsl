class RenameReservationIdFromLessons < ActiveRecord::Migration
  def up
     rename_column :reservations, :reservation_id, :type_id
  end

  def down
     rename_column :reservations, :type_id, :reservation_id
  end
end
