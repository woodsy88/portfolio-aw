Rails.application.routes.draw do
  
  
 
  #get 'pages/about'
  get 'about-me', to: 'pages#about'

  #get 'pages/contact'
  get 'contact', to: 'pages#contact'

  resources :portfolios, except: [:show]
                                              #as: adds the prefix portfolio_show_path
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  root to: 'pages#home'

end
