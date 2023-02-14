Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # list the tasks
  get '/tasks', to: 'tasks#index', as: :tasks

  # # create a task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks/new', to: 'tasks#create'

  # show a specific task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # edit a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
end
