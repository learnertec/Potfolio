Rails.application.routes.draw do
  root "welcome#index"
   resources :contacts, only: [:new,:create]
  resources :posts
  resources :projects
 
  get 'welcome/index'

end
