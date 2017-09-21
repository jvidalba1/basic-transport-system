Rails.application.routes.draw do
  devise_scope :passenger do
    root to: "devise/sessions#new"
  end
  devise_for :passengers
  resources :passengers, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
