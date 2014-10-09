Rails.application.routes.draw do
  devise_for :users

  root to: "welcomes#index"

  resources :exercises, only: [:index, :show, :edit]

  resources :workout_exercise_connectors, only: [:create]

  resources :users do
    resources :workouts
  end
 end
