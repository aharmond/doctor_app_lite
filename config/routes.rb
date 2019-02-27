Rails.application.routes.draw do
  root 'doctors#index'

  resources :doctors do
    resources :appointments, only: [:index, :new, :create, :destroy]
  end 
  resources :patients
end
