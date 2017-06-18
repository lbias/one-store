module CartsHelper
  def render_cart_total_price(cart)
    if session[:currency].present? # 搜寻币值数据
      @currency_s = session[:currency]
      @currency = Currency.find_by(name: @currency_s)
      @currency.symbol + " " + cart.total_price.to_s
    else # 预设币值为新币
      "$ " + cart.total_price.to_s
    end
  end

  def render_product_quantity(product)
    @product = Product.find(product)
    @orderSum = OrderItem.where("product_id" => product).sum(:quantity)
    @product.quantity - @orderSum
  end
end
