class CreateProductImages < ActiveRecord::Migration[5.0]
  def change
    create_table :product_images do |t|

      t.timestamps
    end
  end
end
