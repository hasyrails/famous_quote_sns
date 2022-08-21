Rails.application.routes.draw do
  get '/confirm/:id', to: 'twitter_posts#confirm', as: :confirm #この行を追加
  resources :twitter_posts, only: %i(new create)
  devise_for :users
  root 'tweets#index'

  resources :tweets, only: %i(new create)
end
