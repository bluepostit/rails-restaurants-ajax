Rails.application.routes.draw do
  get 'reviews/create'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :destroy] do
    resources :reviews, only: :create
  end
end
