Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/home'

  resources :handies
  resources :eflashssds
  devise_for :users

resources :handies do
  	collection { post :import , :report}
end

resources :eflashssds do
    collection { post :import }
end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
