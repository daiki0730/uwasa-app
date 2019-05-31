Rails.application.routes.draw do
  root 'tweets#index'

  get  '/tweets/new', to: 'tweets#new'
end