Rails.application.routes.draw do
  devise_for :users
  resources :links
  resources :views, path: :v, only: [:show]
  root "links#index"
end
