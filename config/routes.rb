Rails.application.routes.draw do
  devise_for :doctors
  resources :patients
  resources :doctors
  root "patients#index"
  get '/check', :controller=>'patients', :action=>'checkprice'
  post '/validate', :controller=>'patients', :action=>'cost'
  get '/email', :controller=>'patients', :action=>'contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
