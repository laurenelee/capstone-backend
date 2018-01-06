Rails.application.routes.draw do
  resources :agency_details

  get '/search', to: 'agency_details#search', as: 'search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
