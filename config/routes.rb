Rails.application.routes.draw do
  root 'tweets#index'

  get  'tweets/new', to: 'tweets#new'
  post 'tweets', to: 'tweets#create'
end