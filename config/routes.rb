Rails.application.routes.draw do
  resources :workouts
  resources :workout_exercise_connectors

  devise_for :users, path_names: { sign_out: 'sign_out'}

  root to: "welcome#index"

end
