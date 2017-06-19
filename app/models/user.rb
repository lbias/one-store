class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :nickname, presence: { message: "请输入用戶名" }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def admin?
    is_admin
  end

  has_many :orders
  has_many :wish_lists
  has_many :wish_list_items, :through => :wish_lists, :source => :product

  # 加入愿望清单
  def add_to_wish_list!(product)
    wish_list_items << product
  end

  # 移除愿望清单
  def remove_from_wish_list!(product)
    wish_list_items.delete(product)
  end

  # 商品是否在用户的愿望清单
  def is_wish_list_owner_of?(product)
    wish_list_items.include?(product)
  end
end
