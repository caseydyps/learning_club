Rails.application.routes.draw do

  root "posts#index"

  devise_for :users

  resources :posts, only: [:index]

  resources :groups do
    resources :posts do
    end
  end

  resources :users

  # namespace :admin do


  #   resources :posts, only: [:index]
  #   resources :users, only: [:index]
  #   resources :groups, only: [:index]

  #   root "posts#index"
  # end

end
