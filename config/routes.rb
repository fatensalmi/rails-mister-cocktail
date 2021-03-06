Rails.application.routes.draw do
  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/:id', to: 'cocktails#show'
  # get 'cocktails/new', to: 'cocktails#new'
  # post 'cocktails', to: 'cocktails#create'
  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:index, :new, :create]
    # resources :ingredients, only: [:index, :new, :create]
  end
  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
