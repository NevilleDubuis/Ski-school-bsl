class AddPersonIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :person_id, :integer
  end
end
