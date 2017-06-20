Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  root 'products#index'

  namespace :admin do
    resources :products do
      member do
        post :publish
        post :hide
        post :chosen
      end
    end
    resources :orders do
      member do
        post :cancel
        post :ship
        post :shipped
        post :return
      end
    end
    resources :brands do
      member do
        post :publish
        post :hide
      end
    end
    resources :categories do
      member do
        post :publish
        post :hide
      end
    end
    resources :category_groups do
      member do
        post :publish
        post :hide
      end
    end
    resources :intros do
      member do
        post :publish
        post :hide
      end
    end
  end

  resources :products do
    member do
      post :add_to_cart
      post :setup_currency
      post :add_to_wish_list
      post :remove_from_wish_list
    end
    collection do
      get :search
    end
  end

  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :cart_items

  resources :orders do
    member do
      post :pay_with_alipay
      post :pay_with_wechat
      post :apply_to_cancel
    end
  end

  # 用户专区
  namespace :account do
    # 订单中心
    resources :orders
    # 用户信息
    resources :users
    # 收藏清单
    resources :products do
      member do
        post :add_to_cart
        post :remove_from_wish_list
      end
    end
  end
end
