class RenameReservationIdFromLessons < ActiveRecord::Migration
  def up
     rename_column :lessons, :reservation_id, :type_id
  end

  def down
     rename_column :lessons, :type_id, :reservation_id
  end
end
