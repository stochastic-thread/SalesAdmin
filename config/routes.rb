Rails.application.routes.draw do
  resources :pages
  resources :fileuploads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: 'pages#_'
end
