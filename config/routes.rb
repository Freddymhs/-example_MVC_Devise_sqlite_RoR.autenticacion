Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  get '/' , to: "home#index"  #default
  root :to => "home#index"   # por devise , no es requerimiento
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
