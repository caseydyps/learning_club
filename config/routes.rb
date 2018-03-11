Rails.application.routes.draw do
  
  root "posts#index"

  devise_for :users

  resources :groups
    resources :posts do
    end
  end

  resources :users

end
