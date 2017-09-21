Rails.application.routes.draw do
  devise_scope :passenger do
    root to: "devise/sessions#new"
  end
  devise_for :passengers
  resources :passengers, only: [:index] do
    resources :routes, only: [:index]
  end

  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      resources :vehicles, only: [:index, :create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
