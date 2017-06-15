class Admin::CategoriesController < ApplicationController
  # 用户必须登录
  before_action :authenticate_user!
  # 用户必须是 admin 身份
  before_action :admin_required
  # 后台页面布局
  layout "admin"

  def index
    @categories = Category.all
    @category_groups = CategoryGroup.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
    # 所属的大类
    @category_groups = CategoryGroup.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
    # 所属的大类
    @category_groups = CategoryGroup.all
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  # 发布
  def publish
    @category = Category.find(params[:id])
    @category.publish!
    redirect_to :back
  end

  # 隐藏
  def hide
    @category = Category.find(params[:id])
    @category.hide!
    redirect_to :back
  end

  private

  def category_params
    params.require(:category).permit(:name, :category_group_id, :is_hidden, :description, :logo)
  end

end
