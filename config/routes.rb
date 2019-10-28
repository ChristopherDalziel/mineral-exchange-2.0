Rails.application.routes.draw do

  devise_for :users

  get "/", to: "pages#home", as: "root"

  get "/listings", to: "listings#index", as: "listings"
  post "/listings", to: "listings#create"
  get "/listings/new", to: "listings#new", as: "new_listing"
  get "/listings/:id", to: "listings#show", as: "listing"

  delete "/listings/:id", to: "listings#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
