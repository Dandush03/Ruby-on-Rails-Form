Rails.application.routes.draw do
  get 'users/new', to: 'users#new'
  get 'users/create', to: 'users#create'
  post 'users/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
