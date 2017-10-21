Rails.application.routes.draw do
  
  
 
  #get 'pages/about'
  get 'about-me', to: 'pages#about'

  #get 'pages/contact'
  get 'contact', to: 'pages#contact'

  resources :portfolios
  resources :blogs
  
  root to: 'pages#home'

end
