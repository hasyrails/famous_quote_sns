Rails.application.routes.draw do
  root 'tweets#index'
  devise_for :users
end
