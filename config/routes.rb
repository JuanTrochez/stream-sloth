Rails.application.routes.draw do
  get 'search', to: 'search#index'
  resources :videos
  resources :genres
  resources :films
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
