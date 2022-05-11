Rails.application.routes.draw do
  resources :students
  resources :classrooms
  resources :teachers
  resources :parents
  resources :castordians
  resources :staffs
  resources :contacts
  resources :addresses
  root 'home#index'
  get 'home/about'
  get 'home/update'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
