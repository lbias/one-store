module Admin::CategoryGroupsHelper
  # 判断大类隐藏状态，显示 Public/Hidden 状态
  def render_category_group_status(category_group)
    if category_group.is_hidden
      content_tag(:span, "", :class => "fa fa-lock fa-fw")
    else
      content_tag(:span, "", :class => "fa fa-globe fa-fw")
    end
  end

  # 判断大类隐藏状态，显示 Public/Hidden 按钮
  def render_category_group_publish_or_hide(category_group)
    if category_group.is_hidden
      link_to(t('btn-publish'), publish_admin_category_group_path(category_group), :method => :post, :class => 'btn btn-sm btn-default')
    else
      link_to(t('btn-hide'), hide_admin_category_group_path(category_group), :method => :post, :class => 'btn btn-sm btn-default')
    end
  end
end
