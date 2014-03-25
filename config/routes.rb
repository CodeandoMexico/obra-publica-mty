ObraPublicaMty::Application.routes.draw do
  resources :obras

  resources :municipios

  root to: "index#index"
end
