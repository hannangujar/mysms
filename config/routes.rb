Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'users/confirmations'}

  resources :users do 
    member do
      patch :ban
    end
  end

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
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
