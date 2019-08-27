Rails.application.routes.draw do
  
  get :search, controller: :pages

  resources :jobs
  root to: 'pages#home'
  
  resources :topics #, only: [:index, :show]

  resources :comments
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  #get 'pages/about'
  get 'about-me', to: 'pages#about'
  #get 'pages/contact'
  get 'contact', to: 'pages#contact'
  # get 'work', to: 'pages#work'

  get 'tech-news', to: 'pages#tech_news'

  resources :portfolios, except: [:show] do
    get 'react-items', to: 'portfolios#react'
    put :sort, on: :collection
  end

                                              #as: adds the prefix portfolio_show_path
  get 'portfolios/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :blogs, :path => 'releases' do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'
  
  resources :skills

  get '/tagged', to: "blogs#tagged", as: :tagged

end
