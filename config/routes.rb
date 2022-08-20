Rails.application.routes.draw do
  resources :twitter_posts
  devise_for :users
  root 'tweets#index'

  resources :tweets, only: %i(new create)
end
