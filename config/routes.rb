Rails.application.routes.draw do

  


  get 'pages/home'

  resources :handies
  devise_for :users

resources :handies do
  	collection { post :import , :report}
end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
