Rails.application.routes.draw do
  get 'search', to: 'search#index'
  resources :search
  resources :videos
  resources :genres
  resources :films
  root 'films#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
