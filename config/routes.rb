Rails.application.routes.draw do
  devise_for :users, path_names: { sign_out: 'sign_out'}
  root to: "welcomes#index"
  resources :categories
  resources :exercises
  resources :workouts


  resources :users do
     resources :workout_sessions
  end


  resources :workout_exercise_connectors



end
