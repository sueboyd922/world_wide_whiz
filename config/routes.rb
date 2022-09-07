Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "home#index"
  get '/auth/google_oauth2/callback', to: 'users#create'
  get "/dashboard", to: 'users#show'

  get '/quizzes/new', to: 'quizzes#new'
  get '/quizzes/:id', to: 'quizzes#show'
  post '/quizzes/new', to: 'quizzes#create'

  get '/questions/:id', to: 'questions#show'
  post '/questions/:id', to: 'questions#update'
end
