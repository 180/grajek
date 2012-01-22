Mp3app::Application.routes.draw do
  resources :muzykas

  match "songs/upload", :as => "upload"
  match "songs/downloads", :as => "downloads"
  match "songs/delete", :as => "delete"

  root :to => "songs#index"

end
