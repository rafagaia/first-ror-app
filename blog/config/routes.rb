Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  #root "articles#index"
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'

  # We want to nest comments within a post
  # e.g. /posts/1/comments/2 , where 1 is post ID, and 2 is comment ID
  resources :posts do
    resources :comments
  end
  
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  resources :articles
end
