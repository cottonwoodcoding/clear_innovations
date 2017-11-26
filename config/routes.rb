Rails.application.routes.draw do
  get 'blog_posts/index'

  get 'blog_posts/new'

  get 'blog_posts/edit'

  devise_for :users
  root 'home#index'
  get 'gallery', to: 'gallery#index'
  get 'products', to: 'products#index'
  get 'about', to: 'about#index'
  get 'home', to: 'home#index'
  get '/more_info', to: 'products#more_info'

  post 'upload', to: 'gallery#upload'
  post 'contact', to: 'contact#contact_us'
  resources :blog_posts
end
