Rails.application.routes.draw do

  devise_for :users
  root :to => 'websites#index'

  resources :users
  resources :bookmarks
  resources :websites
  
  get '/explore', to: 'websites#explore'
end
