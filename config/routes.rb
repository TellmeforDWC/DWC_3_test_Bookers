Rails.application.routes.draw do
  root :to => 'homes#index'
  get 'homes/index'
  resources :books, :except => :new
  post "books" => "books#create", as: "new_book"
end
