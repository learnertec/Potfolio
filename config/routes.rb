Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"
   resources :contacts, only: [:new,:create]
  resources :posts
  resources :projects
 
  get 'welcome/index'


  get '*path' => redirect('/')

end
