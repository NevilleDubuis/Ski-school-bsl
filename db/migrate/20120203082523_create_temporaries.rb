class CreateTemporaries < ActiveRecord::Migration
  def change
    create_table :temporaries do |t|
      t.integer :client_id

      t.timestamps
    end
  end
end
