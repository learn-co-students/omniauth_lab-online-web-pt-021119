Rails.application.routes.draw do
  root 'welcome#home'
  post '/sessions' => 'sessions#create'
  get '/auth/facebook/callback' => 'sessions#create'
end
