Rails.application.routes.draw do
  #Rotas para CRUD de Contatos
  resources :contacts
  # Defines the root path route ("/")
  root to: "static_pages#index"

  # Rota Sobre '/sobre'
  get "sobre", to: 'static_pages#sobre'
  # Rota Contato '/contato'
  get "contato", to: 'static_pages#contato'
end
