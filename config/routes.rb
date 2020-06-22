Rails.application.routes.draw do
  root to: "quizzes#index"
  resources :quizzes

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
