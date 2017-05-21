Rails.application.routes.draw do

  # Root Path
  root 'welcome#home'

  # Devise
  devise_for :users

  # Resources
  resources :books do
    resources :chapters
  end
  resources :chapters do
    resources :important_dates, only: [:new]
  end
  resources :important_dates


  # Regular Routes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
