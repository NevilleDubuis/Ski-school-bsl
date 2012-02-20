class RenameReservationIdFromLessons < ActiveRecord::Migration
  def up
     rename_column :lessons, :reservation_id, :kind_id
  end

  def down
     rename_column :lessons, :kind_id, :reservation_id
  end
end
