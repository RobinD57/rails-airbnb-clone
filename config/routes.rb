Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :listings do
    resources :reviews, only: [:create]
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index, :show, :destroy, :update]
  resources :reviews, only: [:destroy, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
