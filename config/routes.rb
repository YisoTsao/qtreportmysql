Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/home'

  resources :handies
  resources :eflashssds
  resources :istoragessds
  devise_for :users

resources :handies do
  	collection { post :import , :report}
end

resources :eflashssds do
    collection { post :import }
end

resources :istoragessds do
    collection { post :import }
end

  root to: 'pages#home'
  resources :contacts 
  
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
