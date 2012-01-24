Mp3app::Application.routes.draw do
  devise_for :users

  

  match "songs/upload", :as => "upload"
  match "songs/downloads", :as => "downloads"
  match "songs/delete", :as => "delete"

  root :to => "songs#index"

end
