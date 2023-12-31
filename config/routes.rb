Rails.application.routes.draw do
  # Defines the root path route ("/")
  root to: "static_pages#index"

  # Rota Sobre '/sobre'
  get "sobre", to: 'static_pages#sobre'
  # Rota Contatos '/contatos'
  get "contatos", to: 'static_pages#contatos'
end
