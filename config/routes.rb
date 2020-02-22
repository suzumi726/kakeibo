Rails.application.routes.draw do
  devise_for :users
  get 'outgoings' => 'outgoings#index'
  get 'outgoings/new' => 'outgoings#new'
  post 'outgoings' => 'outgoings#create'
  delete 'outgoings/:id' => 'outgoings#destroy'
end
