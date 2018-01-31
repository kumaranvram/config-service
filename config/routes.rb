Rails.application.routes.draw do
  resources :scf_configurations
  resources :configurations
  resources :scfs
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
