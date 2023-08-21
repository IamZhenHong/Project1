Rails.application.routes.draw do
  devise_for :users
  resources :mentorposts
  resources :posts
  resources :mentors do
    resources :comments, only: [:create]
  end
  
  get 'pages/landing'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#landing"
end
