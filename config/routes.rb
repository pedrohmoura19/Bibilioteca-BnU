Rails.application.routes.draw do
  resources :tags
  root "books#index"
  
  resources :books
  # resources :tags
  post "tags", to: "tags#create" 
  resources :tags_books
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
