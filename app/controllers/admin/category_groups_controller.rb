class Admin::CategoryGroupsController < ApplicationController
  # 用户必须登录
  before_action :authenticate_user!
  # 用户必须是 admin 身份
  before_action :admin_required
  # 后台页面布局
  layout "admin"

  def show
    @category_group = CategoryGroup.find(params[:id])
  end

  def new
    @category_group = CategoryGroup.new
  end

  def create
    @category_group = CategoryGroup.new(category_group_params)
    if @category_group.save
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def edit
    @category_group = CategoryGroup.find(params[:id])
  end

  def update
    @category_group = CategoryGroup.find(params[:id])
    if @category_group.update(category_group_params)
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  # 发布
  def publish
    @category_group = CategoryGroup.find(params[:id])
    @category_group.publish!
    redirect_to :back
  end

  # 隐藏
  def hide
    @category_group = CategoryGroup.find(params[:id])
    @category_group.hide!
    redirect_to :back
  end

  private

  def category_group_params
    params.require(:category_group).permit(:name, :is_hidden, :description, :logo, :image)
  end
end
