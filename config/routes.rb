Rails.application.routes.draw do
  root :to => 'websites#index'

  devise_for :users
  resources :users
  resources :websites
  get '/explore', to: 'websites#explore'
end
