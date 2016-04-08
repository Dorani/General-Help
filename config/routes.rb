Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'welcome/index'

  devise_for :users
  resources :posts
end
