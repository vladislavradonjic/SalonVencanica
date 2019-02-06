Rails.application.routes.draw do
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :appointments

  root to: 'pages#home'
end
