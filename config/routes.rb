# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root_path = 'boards#index'

  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    devise_for :users
    resources :enterprises
    resources :services
    resources :boards, only: :index 
    resources :dashboards, only: :index do
      collection do
        get :profile
        get :admin_panel
        get :enterprise_panel
      end
    end
  end

  root to: root_path
  get '/:locale', to: root_path
end
