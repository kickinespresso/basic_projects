BasicProjects::Engine.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :projects
  resources :categories
  root 'projects#index'
end
