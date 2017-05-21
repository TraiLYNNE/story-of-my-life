Rails.application.routes.draw do
  resources :books
  # Root Path
  root 'welcome#home'

  # Devise
  devise_for :users

  # Resources 


  # Regular Routes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
