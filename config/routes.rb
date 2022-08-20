Rails.application.routes.draw do
  root 'tweets#index'
  devise for :users
end
