Rails.application.routes.draw do
  devise_for :doctors
  resources :patients
  resources :doctors
  root "patients#index"
  get '/check', :controller=>'patients', :action=>'checkprice'
  post '/validate', :controller=>'patients', :action=>'price'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
