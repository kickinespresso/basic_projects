BasicProjects::Engine.routes.draw do

  resources :projects
  resources :categories
  root 'projects#index'
end
