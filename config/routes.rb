Rails.application.routes.draw do
  
  resources :jobs
  root to: 'pages#home'
  
  resources :topics #, only: [:index, :show]

  resources :comments
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  #get 'pages/about'
  get 'about-me', to: 'pages#about'
  #get 'pages/contact'
  get 'contact', to: 'pages#contact'

  get 'tech-news', to: 'pages#tech_news'

  resources :portfolios, except: [:show] do
    get 'react-items', to: 'portfolios#react'
    put :sort, on: :collection
  end

                                              #as: adds the prefix portfolio_show_path
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'
  
  resources :skills, except: [:destroy]

  get '/tagged', to: "blogs#tagged", as: :tagged

end
