Rails.application.routes.draw do
  resources :twitter_posts
  devise_for :users
  root 'tweets#index'
  # devise_for :users
end
