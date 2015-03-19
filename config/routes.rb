Rails.application.routes.draw do

    # get '/auth/google_oauth2' => 'sessions#create'

  resources :user_friends

  resources :comments, only: [:create, :index]

  resources :suggestions, only: [:create, :destroy, :index, :new]

  # resources :categories, only: [:create]

  resources :trips

  resources :users

  resource :session, only: [:new, :create, :destroy]
  resource :calendar, only: [:index]

  get '/logout' => 'sessions#destroy'

  get '/suggestion/:id/upvote' => 'suggestions#upvote'

  get '/suggestion/:id/downvote' => 'suggestions#downvote'

  get '/suggestion/:id/getcomments' => 'comments#suggestion_comments'

  get '/suggestion/:category_id/all' => 'suggestions#index'

  get '/suggestion/:id/show' => 'suggestions#show'

  get '/categories/:trip_id' => 'categories#index'

  get '/categories/:id/show' => 'categories#show'

  get '/return_current_user' => 'mains#return_current_user'

  get '/usertrip' => 'trips#user_trip'

  get '/userfriends' => 'users#user_friends'

  get '/' => 'mains#index'

  get '/schedule' => 'calendars#new'
  get '/calendar' => 'calendars#index'
  get '/edit_suggestion' => 'calendars#edit'


end
