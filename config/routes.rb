ObraPublicaMty::Application.routes.draw do
  resources :obras

  resources :municipios do
    member do
      get 'proveedores'
      get 'obras'
      get 'licitaciones'
    end
  end

  get '/municipio/:id', to: 'municipios#show'

  root to: 'index#index'
end
