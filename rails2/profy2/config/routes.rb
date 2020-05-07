Rails.application.routes.draw do
  get 'answers/new'
  get 'answers/create'
  get 'questions/create'
  get 'groups/show'
  get 'groups/edit'
  get 'groups/update'
  get 'users/show'
  devise_for :users
  root 'top#index'
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:show, :edit, :update]
  resources :questions, only: [:create, :show]
  resources :answers, only: [:create, :new, :edit, :update]
end
