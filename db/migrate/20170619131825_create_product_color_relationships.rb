class CreateProductColorRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :product_color_relationships do |t|

      t.timestamps
    end
  end
end
