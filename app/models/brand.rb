class Brand < ApplicationRecord
  # 新增/修改栏位限制与提示
  validates :name, presence: true

  # 关联
  has_many :products
end
