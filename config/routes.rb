Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index', as: :index
  get 'show/:id', to: 'tasks#show'
  get 'task/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'
end
