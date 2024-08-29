Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :challenges, only: %i[index show new create edit update] do
    resources :user_challenges, only: %i[create]
    collection do
      get 'generated'
    end
  end
  resources :user_challenges, only: %i[show]
  resources :user_challenge_steps, only: %i[update]

  get 'dashboard', to: 'dashboard#index'
  resources :user_challenges, only: %i[index update]
end
