Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 namespace :api do 

    get "/spends" => "spends#index"

  post "/spends" => "spends#create"


  patch "/spend" => "spends#update"

   get "/saves" => "saves#index"

   post "/saves" => "saves#create"



 end 



end
