class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.date :day
      t.time :start
      t.integer :nhours

      t.timestamps
    end
  end
end
