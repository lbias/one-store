module CartItemsHelper
  def render_product_price(product)
    if session[:currency].present? # 搜寻币值数据
      @currency_s = session[:currency]
      @currency = Currency.find_by(name: @currency_s)
      product.price = product.price * @currency.rate
      price = @currency.symbol + " " + product.price.to_s
    else # 预设币值为新币
      price = "$ " + product.price.to_s
    end
  end

  def render_product_price_count(product,quantity)
    if session[:currency].present?
      @currency_s = session[:currency]
      @currency = Currency.find_by(name: @currency_s)
      count = @currency.symbol + " " + (product.price * quantity).to_s
    else
      count = "$ " + (product.price * quantity).to_s
    end
  end
end
