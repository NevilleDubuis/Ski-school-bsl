class AddReservationIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :reservation_id, :integer
  end
end
