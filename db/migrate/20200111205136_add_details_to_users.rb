class AddDetailsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :photo, :string
    add_column :users, :role, :integer
  end
end
