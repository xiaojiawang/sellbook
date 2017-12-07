SellBook::Application.routes.draw do
# root 'books#index'
root to: 'books#index'
resources :sessions
match 'login', to: 'sessions#new'
match 'sign_out', to: 'sessions#destroy'
resources :users do
  get :self_info, on: :collection
end
match 'register', to: 'users#new'
resources :books do 
  post :import, on: :collection
end
resources :provinces
resources :cities do
  get :cities, on: :collection
end
resources :countdowns
end
