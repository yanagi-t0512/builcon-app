Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/" =>  'buildings#index'
  # get "buildings/new" => 'buildings#new'
  root 'buildings#index'
  get "contacts/new/:id" => 'contacts#new'
  resources :buildings
  resources :contacts
end
