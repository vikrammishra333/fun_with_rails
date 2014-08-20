BlogEngine::Application.routes.draw do
 
  resources :blogs
  resources :categories
  resources :posts
  resources :tags
  devise_for :users
  resources :users, :only => [:index, :show]

  root :to => "blogs#index"

end
