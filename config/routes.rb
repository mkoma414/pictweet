Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  root  'tweets#index' 
  # get 'tweets' => 'tweets#index'
  # get   'tweets/new'  =>  'tweets#new' 
  # post  'tweets'      =>  'tweets#create' 
  # delete  'tweets/:id'  => 'tweets#destroy'
  # get   'tweets/:id/edit'  => 'tweets#edit'
  # patch   'tweets/:id'  => 'tweets#update'
  # get 'tweets/:id' => 'tweets#show'
  # get   'users/:id'   =>  'users#show' 
  
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]  
end
