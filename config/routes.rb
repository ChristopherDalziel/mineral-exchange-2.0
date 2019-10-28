Rails.application.routes.draw do

  # devise_for :users

  devise_for :user, :controllers => {:registrations => "registrations"}

  get "/", to: "pages#home", as: "root"

  get "/listings", to: "listings#index", as: "listings"
  post "/listings", to: "listings#create"
  get "/listings/new", to: "listings#new", as: "new_listing"
  get "/listings/:id", to: "listings#show", as: "listing"
  put "/listings/:id", to: "listings#update"
  patch "/listings/:id", to: "listings#update"
  delete "/listings/:id", to: "listings#destroy"
  get "/listings/:id/edit", to: "listings#edit", as: "edit_listing"

  delete "/listings/:id", to: "listings#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# Trying to make a is_seller true or false check box:

# <% is_seller.each do |user_type| %><tr>
#   <td><%= check_box_tag :ampliseq, "1", user_type.ampliseq, disabled: true %></td>
#     <% check_box_tag(name, value = "1", checked = false, options = {}) %>
# <% end %>