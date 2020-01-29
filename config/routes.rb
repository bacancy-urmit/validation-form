Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get "students/new", to: "students#new"
post "students/", to: "students#create"
end
