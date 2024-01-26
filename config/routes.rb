Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "articles#index"
  
    # This route directs a GET request to a search action in the ArticlesController and names the path helper search_articles_path.
    get 'articles/search', to: 'articles#search', as: 'search_articles'

  resources :articles

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"



end
