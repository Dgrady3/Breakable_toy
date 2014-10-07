Rails.application.routes.draw do
  root to: "welcomes#index"
  resources :categories
  resources :exercises

  resources :workouts
  resources :workout_exercise_connectors


  devise_for :users, path_names: { sign_out: 'sign_out'}



end
