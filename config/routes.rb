Rails.application.routes.draw do
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


  