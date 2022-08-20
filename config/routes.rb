Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  # devise_for :users
end
