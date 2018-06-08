Rails.application.routes.draw do
  root 'short_urls#index'

  resources :short_urls
  resources :url_views, only: [:show]
end
