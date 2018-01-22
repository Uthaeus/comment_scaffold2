Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  resources :blogs do 
    resources :comments
  end

  resources :comments do
    resources :comments
  end

  get 'pages/about'

  get 'pages/contact'

  root to: 'pages#home'
end


  