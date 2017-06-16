class Admin::ProductsController < ApplicationController
  # 用户必须登录
  before_action :authenticate_user!
  # 用户必须是 admin 身份
  before_action :admin_required
  # 后台页面布局
  layout "admin"

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    # 商品所属的品牌/细分品类
    @brands = Brand.all
    @categories = Category.all.order("category_group_id, name")
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    # 商品所属的品牌/细分品类
    @brands = Brand.all
    @categories = Category.all.order("category_group_id, name")
  end

  def update
    @product = Product.find(params[:id])
    # 商品所属的品牌
    @brands = Brand.all.map { |b| [b.name, b.id] }
    @product.brand_id = params[:brand_id]
    # 商品所属的细分品类
    @categories = Category.all.map { |c| [c.name, c.id] }
    @product.category_id = params[:category_id]
    if @product.update(product_params)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  # 发布
  def publish
    @product = Product.find(params[:id])
    @product.publish!
    redirect_to :back
  end

  # 隐藏
  def hide
    @product = Product.find(params[:id])
    @product.hide!
    redirect_to :back
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image, :category_id, :brand_id, :is_hidden)
  end
end
