Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:index, :show] do
    resources :messages, only: [:index, :create]
  end
  resources :trails, only: [:index, :show] do
    resources :runs, only: [:new, :create]
  end

  GET "/messages", to: "messages#all_messages", as: :all_messages
  GET "/my_runs", to: "runs#my_runs", as: :my_runs
  GET "/my_runs/:id", to: "runs#my_run", as: :my_run
end
