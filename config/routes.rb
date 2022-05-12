Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }

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
  resources :users, only: [:index, :show, :update, :destroy] do
    member do
      patch :ban 
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
