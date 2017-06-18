class AddDetailsToCategoryAndGroup < ActiveRecord::Migration[5.0]
  def change
    add_column :category_groups, :logo, :string
    add_column :category_groups, :description, :text
    add_column :categories, :logo, :string
    add_column :categories, :description, :text        
  end
end
