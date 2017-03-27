Rails.application.routes.draw do
  devise_for :users
  resources :movies do
    member do
      post :join
      post :quit
    end

    resources :reviews
  end

  namespace :account do
    resources :movies
    resources :reviews
  end

  root "movies#index"
  get "about/index"
  get 'about2', to: 'movies#about2'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
