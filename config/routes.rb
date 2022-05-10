Rails.application.routes.draw do
  resources :courses
  resources :students
  get 'home/index'
  get 'results/result'
  get 'home/about'
  #get '/result'=>'results#result'
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
