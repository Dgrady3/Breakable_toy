Rails.application.routes.draw do
  root to: "welcomes#index"
  resources :workouts
  resources :workout_exercise_connectors
  resources :categories
  resources :exercises

  devise_for :users, path_names: { sign_out: 'sign_out'}



end
