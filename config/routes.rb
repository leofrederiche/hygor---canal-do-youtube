Rails.application.routes.draw do
  
  get "/", to: "welcome#index", as: :root

  get "/contato", to: "contact#index", as: :contact

  get "/post", to: "post#log", as: :log
  post "/post", to: "post#confirmation", as: false

  get "/post/new", to: "post#new", as: :new_post
  post "/post/new", to: "post#create", as: false

end
