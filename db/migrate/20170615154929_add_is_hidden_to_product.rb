class AddIsHiddenToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :category_id, :integer
    add_column :products, :brand_id, :integer
    add_column :products, :is_hidden, :boolean, default: true
  end
end
