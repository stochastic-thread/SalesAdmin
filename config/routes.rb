Rails.application.routes.draw do
  devise_for :users
  resources :pages
  resources :fileuploads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: 'pages#_'
  post "/ingestSale", to: "sales#ingest"
  root to: "pages#_"
  get "/totalRevenue", to: 'sales#total_revenue'
end
