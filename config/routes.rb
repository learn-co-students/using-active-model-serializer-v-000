Rails.application.routes.draw do
  resources :authors, only: [:show]
  resources :posts, only: [:index, :show, :new, :create, :edit]
patch 'posts/:id', to: 'posts#update'
end
