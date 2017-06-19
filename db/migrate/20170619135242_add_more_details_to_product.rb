class AddMoreDetailsToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :size, :string
    add_column :products, :material, :string
    add_column :products, :country, :string
    add_column :products, :is_chosen, :boolean, default: false        
  end
end
