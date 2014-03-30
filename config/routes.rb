ObraPublicaMty::Application.routes.draw do
  resources :obras

  resources :municipios

  get "/municipio/:id", :to=> "municipios#show"

  root to: "index#index"
end
