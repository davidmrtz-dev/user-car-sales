Rails.application.routes.draw do
  get 'cars/update'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup'}
  devise_for :views
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get  '/home',   to: 'home#index'
  resources :cars, only: %i[new create edit update destroy show]
end
