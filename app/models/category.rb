class Category < ApplicationRecord
  # 新增/修改栏位限制与提示
  validates :name, presence: { message: "请输入品类名称" }
  validates :category_group_id, presence: { message: "请选择品类类型" }

  # 关联
  belongs_to :category_group
  has_many :products
end
