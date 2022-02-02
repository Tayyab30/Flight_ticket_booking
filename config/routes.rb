Rails.application.routes.draw do
  devise_for :users
  root "flights#index"
  resources :flights
  resources :passengers do
    collection do
      get 'passenger_dtl' 
    end
  end
    resources :ticket_details
  resources :searches
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
