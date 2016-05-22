Rails.application.routes.draw do
  root 'pages#main'
  resources :notes, only: [:create, :show], defaults: { format: :json }
  resources :patients, only: [:create, :show], defaults: { format: :json } do
    collection do
      get :get_by_inn
    end
  end
  resources :doctors, only: [:create, :show], defaults: { format: :json }
end
