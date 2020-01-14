class AddDetailsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :size, :string
    add_column :products, :color, :string
    add_column :products, :material, :string
  end
end
