Rails.application.routes.draw do
  resources :authors
  get 'posts/:id/post_data', to: 'posts#post_data'
  patch 'posts/:id', to: 'posts#update'
  resources :posts
  get 'authors/:id/post_data', to: 'authors#post_data'
  patch 'authors/:id', to: 'authors#update'
end
