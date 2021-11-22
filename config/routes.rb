Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  # get "/my_bookings", to: "bookings#my_bookings"
  # get "/my_watches_bookings", to: "bookings#my_watches_bookings"
  # get "/my_watches", to: "watches#my_watches"
  # get "/accept_booking/:id", to: "bookings#accept", as: :accept_booking
  # get "/reject_booking/:id", to: "bookings#reject", as: :reject_booking
  resources :users, only: [:index, :show] do
    resources :messages, only: [:new, :create]
  end

  GET "/users", to:"users#index"
  GET "/users/:id", to:"users#show"
  GET "/messages", to:"messages#all_messages"
  GET "/users/:user_id/messages", to:"messages#index"
  POST "/users/:user_id/messages", to:"messages#create"
  GET "/users/:user_id/messages", to:"messages#index"
  GET "/trails", to:"trails#index"
  GET "/trails/:id", to:"trails#show"
  GET "/trails/:trail_id/runs/new", to:"runs#new"
  POST "/trails/:trail_id/runs", to:"runs#create"
  GET "/my_runs", to:"runs#my_runs"
  GET "/my_runs/:id", to:"runs#my_run"
  GET "/users/:id/achievements", to:"runs#index"
  POST "/users/:id/notify", to:"runs#notify"
end
