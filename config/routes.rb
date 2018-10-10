Rails.application.routes.draw do
  resources :posts
  resources :authors, only: [:show]
  resources :posts, only: [:index, :show, :new, :create, :edit]
  get 'posts/:id/post_data', to: 'posts#post_data'
end
