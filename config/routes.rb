Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => 'books#index'
get 'books' => 'books#new', as: 'books'
post 'todolists' => 'todolists#create'
resources :books
end
