Rails.application.routes.draw do
  resources :messages, only: [:destroy] do
    resources :graffitis, only: [:create, :update]
  end

  resources :users
  resources :facilities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
