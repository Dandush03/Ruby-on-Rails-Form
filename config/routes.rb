Rails.application.routes.draw do
  get 'users', to: 'users#index'
  get 'users/new', to: 'users#new', as: 'new_user'
  post 'users' , to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
