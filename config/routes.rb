Rails.application.routes.draw do
  devise_for :users
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'angular-items', to: 'portfolios#angular'
  root to: 'pages#home'

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  resources :blogs do
    member do 
      get :toggle_status
    end
  end 

end
