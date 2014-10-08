Rails.application.routes.draw do
  devise_for :users, path_names: { sign_out: 'sign_out'}
  root to: "welcomes#index"
  resources :categories
  resources :exercises
  resources :users
  resources :workouts
  resources :workout_exercise_connectors



end
