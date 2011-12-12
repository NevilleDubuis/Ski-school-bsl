class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :second_name
      t.string :address
      t.string :city
      t.integer :zip
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
