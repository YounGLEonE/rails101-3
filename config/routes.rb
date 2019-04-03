Rails.application.routes.draw do
  devise_for :users
  resources :groups do
 member do
    post :join
    post :quit
  end
   resources :posts
  end

  namespace :account do
    resources :groups
    resources :posts
  end

#for details on the DSL available within this file

  root 'groups#index'
end
