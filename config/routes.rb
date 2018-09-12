Rails.application.routes.draw do
  resources :authors, only: [:show]
  resources :posts, only: [:index, :show, :new, :edit, :create, :update]
  get 'posts/:id/post_data', to: 'posts#post_data'
end
