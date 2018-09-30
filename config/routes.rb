Rails.application.routes.draw do
  resources :user_profiles
  devise_for :users
  resources :blogs do
    resources :posts
  end
  root  'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/bestofthebest', to: 'static_pages#bestofthebest' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
