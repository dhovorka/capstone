Rails.application.routes.draw do
  get 'messages/reply'
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
#comments
get "/comments" => "comments#index"
get "/comments/:id" => "comments#show"
post "/comments" => "comments#create"
patch "/comments/:id" => "comments#update"
delete "/comments/:id" => "comments#destroy"

#tournaments
get "/tournaments" => "tournaments#index"
post "/tournaments" => "tournaments#create"
get "/tournaments/:id" => "tournaments#show"
delete "/tournaments/:id" => "tournaments#destroy"
patch "/tournaments/:id" => "tournaments#update"

#sessions
post "/sessions" => "sessions#create"

end
end