Rails.application.routes.draw do
  get 'competitions/index'
  root  'static_pages#home'
  resources :users
  resources :competitions do
    resources :matches
  end
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
