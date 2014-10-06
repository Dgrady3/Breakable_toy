Rails.application.routes.draw do
  resources :workouts

  devise_for :users, path_names: { sign_out: 'sign_out'}

  root to: "welcome#index"

end
