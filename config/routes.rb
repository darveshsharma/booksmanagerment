Rails.application.routes.draw do
  get 'authors/index'
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # Defines the root path route ("/")
  root to: "home#index"
  get '/author' => "authors#author_page"
  post '/authors' => "authors#create"
end
