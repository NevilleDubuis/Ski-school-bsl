class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.date :start_date
      t.date :end_date
      t.integer :instructor_id

      t.timestamps
    end
  end
end
