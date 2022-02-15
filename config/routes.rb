Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # read all
  get '/tasks', to: 'tasks#index'
  # create one
  get 'task/new', to: 'tasks/#new', as: :new_task
  # read one
  get '/tasks/:id', to: 'tasks#show', as: :task
  post '/tasks', to: 'tasks#create'
  # update one
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  # delete one
  delete '/tasks/:id', to: 'tasks#destroy'
end
