Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  root to: "groups#index"

  resources :users, only: [:new]
  resources :groups, only: [:index, :create] do
    resources :messages, only: [:index, :new, :create]
  end
end
