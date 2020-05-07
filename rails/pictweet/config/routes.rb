Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  devise_for :users
  root   'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  
  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end
  
  resources :users, only: [:show] 
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # get    'tweets'　        => 'tweets#index'
  # get    'tweets/new'      => 'tweets#new'
  # post   'tweets'          => 'tweets#create'
  # delete 'tweets/:id'      => 'tweets#destroy'
  # get    'tweets/:id/edit' => 'tweets#edit'
  # patch  'tweets/:id'      => 'tweets#update'
  # get    'users/:id'       => 'users#show' #マイページ
  # get    'tweets/:id'      => 'tweets#show'

