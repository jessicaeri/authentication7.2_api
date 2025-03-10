Rails.application.routes.draw do
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'

  namespace :api do
    namespace :v1 do
      resources :users
      # or resources :posts, etc.
    end
  end
  #trivia question route
  get '/trivia', to: 'trivia_questions#show'

  get '/news', to: 'news#fetch_news' 
end
