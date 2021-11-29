Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: %i[index show]

  resources :trails, only: %i[index show] do
    resources :runs, only: %i[new create]
  end

  get "/my_runs", to: "runs#my_runs", as: :my_runs
  get "/my_runs/:id", to: "runs#my_run", as: :my_run
  get "/my_runs/:id/register_run", to: "runs#register_run", as: :register_run
  patch "/my_runs/:id/", to: "runs#post_register_run"

  resources :chatrooms, only: %i[index show] do
    resources :messages, only: :create
  end

  get "/my_messages", to:"messages#my_messages", as: :my_messages
  get "/all_messages", to: "messages#all_messages", as: :all_messages

  get "/users/:id/complete_profile", to: "users#complete_profile", as: :complete_profile
  patch "users/:id", to: "users#update_profile", as: :update_profile
  
  get "/users/:id/my_achievements", to: "user_badges#index", as: :user_badges

  post "users/:id", to: "users#update_profile", as: :update_profile

end
