Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:index, :show] do
    resources :messages, only: [:index, :create]
  end

  resources :trails, only: [:index, :show] do
    resources :runs, only: [:new, :create]
  end

  get "/messages", to: "messages#all_messages", as: :all_messages
  get "/my_runs", to: "runs#my_runs", as: :my_runs
  get "/my_runs/:id", to: "runs#my_run", as: :my_run
  get "/users/:id/complete_profile", to: "users#complete_profile", as: :complete_profile
  patch "users/:id", to: "users#update_profile", as: :update_profile
end
