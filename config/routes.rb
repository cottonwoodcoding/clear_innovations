Rails.application.routes.draw do
  root 'home#index'
  get 'gallery', to: 'gallery#index'
  get 'products', to: 'products#index'
  get 'about', to: 'about#index'
  get 'home', to: 'home#index'
end
