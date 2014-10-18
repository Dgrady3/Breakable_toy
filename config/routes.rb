Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" } do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end

  root to: "welcomes#index"
  resources :categories
  resources :exercises
  resources :workouts
  resources :friendships
  resources :workout_exercise_connectors
  
  resources :users do
     resources :workout_sessions
     resources :stats
     resources :goals
  end
end
