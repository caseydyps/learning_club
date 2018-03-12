Rails.application.routes.draw do

  root "posts#index"

  devise_for :users

  resources :posts, only: [:index]

  resources :groups do
    resources :posts do
    end
  end

  resources :users

end
