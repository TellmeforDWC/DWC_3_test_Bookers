Rails.application.routes.draw do
  root :to => 'homes#index'
  get 'homes/index'
  resources :books, :except => [:new, :destroy]
  post "books" => "books#create", as: "new_book"
  delete "books/:id" => "books#destroy", as: "destroy_book"
end
