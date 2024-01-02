Rails.application.routes.draw do
  # Defines the root path route ("/")
  root to: "static_pages#index"

  # Rota Sobre '/sobre'
  get "sobre", to: 'static_pages#sobre'
  # Rota Contato '/contato'
  get "contato", to: 'static_pages#contato'

  #Rotas para CRUD de Contatos
  resources :contacts
  #Rotas para CRUD de Usuários
  resources :users, only: [:new, :create, :show]
end
