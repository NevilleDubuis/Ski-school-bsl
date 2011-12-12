class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.integer :person_id

      t.timestamps
    end
  end
end
