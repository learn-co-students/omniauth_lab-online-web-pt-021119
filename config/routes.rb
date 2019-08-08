Rails.application.routes.draw do
  get '/', to: 'welcome#home'

  get 'sessions/new'

  get '/auth/facebook/callback' => 'sessions#create'

end
