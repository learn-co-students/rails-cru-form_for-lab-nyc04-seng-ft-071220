Rails.application.routes.draw do
 


  resources :artists, only: [:index, :show, :new, :create, :edit, :update]
  resources :genres
  resources :songs

  # get 'artists', to: 'artists#index'

  get 'artists/:id', to: 'artists#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
