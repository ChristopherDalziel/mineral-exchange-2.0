Rails.application.routes.draw do

  devise_for :user

  # devise_for :user, :controllers => {:registrations => "registrations"}

  get "/", to: "pages#home", as: "root"
  get "contact_us", to:"pages#contact", as: "contact_us"

  get "/listings", to: "listings#index_buyer", as: "listings_buyer"
  get "/seller_listings", to: "listings#index_seller", as: "listings_seller"
  post "/listings", to: "listings#create"
  get "/listings/new", to: "listings#new", as: "new_listing"
  get "/listings/:id", to: "listings#show", as: "listing"
  put "/listings/:id", to: "listings#update"
  patch "/listings/:id", to: "listings#update"
  post "/listings/:id", to: "listings#update"
  delete "/listings/:id", to: "listings#destroy"
  get "/listings/:id/edit", to: "listings#edit", as: "edit_listing"

  get "/user_details", to: "user_details#index", as: "user_details"
  post "/user_details", to: "user_details#create"
  get "/user_details/new", to: "user_details#new", as: "new_user_detail"
  put "/user_details/:id", to: "user_details#update"
  patch "/user_details/:id", to: "user_details#update", as: "user_detail"
  delete "/user_details/:id", to: "user_details#destroy"
  get "/user_details/:id/edit", to: "user_details#edit", as: "edit_user_detail"
  get "/user_details/:id", to: "user_details#show"

  get "/questions/:listing_id", to: "questions#index", as: "question"
  post "/questions/new/:listing_id", to: "questions#create", as: "create_question"
  get "/questions/new/:listing_id", to: "questions#new", as: "new_question"
  put "/questions/:id", to: "questions#update"
  patch "/questions/:id", to: "questions#update"
  delete "/questions/:id", to: "questions#destroy"
  get "questions/:id/edit", to: "questions#edit", as: "edit_question"

  get "/answers/:question_id", to: "answers#index", as: "answer"
  post "/answers", to: "answers#create"
  get "/answers/new/:question_id", to: "answers#new", as: "new_answer"
  put "/answers/:id", to: "answers#update"
  patch "/answers/:id", to: "answers#update"
  delete "/answers/:id", to: "answers#destroy"
  get "answers/:id/edit", to: "answers#edit", as: "edit_answer"

  # delete "/listings/:id", to: "listings#destroy"
end