Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # As a user, I can add a new task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  # As a user, I can list tasks => tasks#index
  get "tasks", to: "tasks#index"
  # As a user, I can view the details of a task
  get "tasks/:id", to: "tasks#show", as: :task
  # As a user, I can edit a task (mark as completed / update title & details)
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # As a user, I can remove a task
  delete "tasks/:id", to: "tasks#destroy"
end
