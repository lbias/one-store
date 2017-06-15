class AddIsHiddenToProduct < ActiveRecord::Migration[5.0]
  def change
    t.integer :category_id
    t.integer :brand_id
    t.boolean :is_hidden, default: true    
  end
end
