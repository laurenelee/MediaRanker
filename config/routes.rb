Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'main#index'
  resources :works
  resources :users do
    resources :votes, only: [:index, :new]
  end
  resources :votes
end