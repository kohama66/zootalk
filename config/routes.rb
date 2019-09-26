Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  root to: "groups#index"

  resources :groups, only: [:index, :create] do
    resources :messages, only: [:index, :new, :create]
  end
end
