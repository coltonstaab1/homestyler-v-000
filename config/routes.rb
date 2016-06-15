Rails.application.routes.draw do
  root 'static#home'
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :users, only: [:index, :show, :edit, :update] do 
    resources :rooms, only: [:index, :show, :edit, :new, :update]
  end
  resources :rooms
  resources :furnitures
  get '/missing_page', to: 'static#missing_page'
  get '*path' => redirect('/missing_page')
  get '/users/:id/furnitures/new', to: 'furnitures#new'
  post '/users/:id/furnitures/', to: 'furnitures#create'
end
