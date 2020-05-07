Rails.application.routes.draw do
  get 'answers/new'
  get 'answers/create'
  get 'questions/create'
  get 'groups/show'
  get 'users/show'
  devise_for :users
  root to: "top#index"
  resources :users, only: [:show, :edit, :update]
  resources :groups, onle: [:show, :edit, :update]
  resources :questions, only: [:create, :show]
  resources :answers, only: [:new, :create, :edit, :update]
end
