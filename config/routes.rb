Rails.application.routes.draw do
  resources :users
  resources :messages, only: [:show] do
    resources :graffitis, only: [:create]
    # POST messages/:message_id/graffitis
  end
  resources :facilities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
