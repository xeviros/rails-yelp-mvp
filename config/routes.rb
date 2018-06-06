Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'

  # get 'restaurants/new', to: 'restaurants#new'

  # post 'restaurants', to: 'restaurants#create'

  # get 'restaurants/:id', to: 'restaurants#show'

  # get 'reviews/new', to: 'reviews#new'

  # post 'reviews', to: 'reviews#create'

  resources :restaurants , only: [:new, :index, :show, :create] do
    # get 'reviews/new', to: 'reviews#new'

    # post 'reviews', to: 'reviews#create'
    resources :reviews, only: [:new, :create]
  end
end
