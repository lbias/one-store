class CartsController < ApplicationController
  before_action :authenticate_user!

  def index
    @carts = Cart.all
    @suggests = Product.published.random3
    @category_groups = CategoryGroup.published
    @brands = Brand.published
  end

  def clean
    current_cart.clean!
    flash[:warning] = t('message-clear-cart-success')
    redirect_to carts_path
  end

  def checkout
    @order = Order.new
  end
end
