module Admin::ProductsHelper
  # 判断商品隐藏状态，显示 Public/Hidden 状态
  def render_product_status(product)
    if product.is_hidden
      content_tag(:span, "", :class => "fa fa-lock fa-fw")
    else
      content_tag(:span, "", :class => "fa fa-globe fa-fw")
    end
  end

  # 判断h商品隐藏状态，显示 Public/Hidden 按钮
  def render_product_publish_or_hide(product)
    if product.is_hidden
      link_to(t('btn-publish'), publish_admin_product_path(product), :method => :post, :class => 'btn btn-sm btn-default')
    else
      link_to(t('btn-hide'), hide_admin_product_path(product), :method => :post, :class => 'btn btn-sm btn-default')
    end
  end
end
