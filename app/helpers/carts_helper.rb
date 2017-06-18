module CartsHelper
  def render_cart_total_price(cart)
    cart.total_price
  end

  def render_product_quantity(product)
    @product = Product.find(product)
    @orderSum = OrderItem.where("product_id" => product).sum(:quantity)
    @product.quantity - @orderSum
  end  
end
