class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def update
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by(product_id: params[:id])
    @cart_item.quantity = params[:quantity]
    @cart_item.save
    redirect_to :back
  end

  def destroy
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by(product_id: params[:id])
    @product = @cart_item.product
    @cart_item.destroy
    redirect_to :back
  end

  # private
  #
  # def cart_item_params
  #   params.require(:cart_item).permit(:quantity)
  # end
end
