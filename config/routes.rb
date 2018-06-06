Rails.application.routes.draw do
  root 'short_urls#index'

  resources :short_urls
end
