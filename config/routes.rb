Rails.application.routes.draw do
  devise_for :members

  resources :posts

  root to: 'posts#index'
end
