TwitterClone::Application.routes.draw do
  resources :tweets

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'newtweet', to: 'tweets#new', as: 'newtweet'
  resources :tweets
  resources :users
  resources :sessions
  root :to => 'tweets#index'

end
