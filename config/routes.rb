Rails.application.routes.draw do
  get 'reviews/create'
  root to: 'pages#home'
  resources :restaurants, only: [ :index, :show, :destroy ] do
    resources :reviews, only: :create
  end
end
