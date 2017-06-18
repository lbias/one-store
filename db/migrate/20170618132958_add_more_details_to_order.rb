class AddMoreDetailsToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :order_id, :integer
    add_column :orders, :shipping_phone, :string
    add_column :orders, :currency, :string
  end
end
