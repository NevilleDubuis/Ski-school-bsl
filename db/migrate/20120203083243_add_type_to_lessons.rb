class AddTypeToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :kind, :string
  end
end
