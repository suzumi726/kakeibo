Rails.application.routes.draw do
  devise_for :users
  get 'outgoings' => 'outgoings#index'
  get 'outgoings/new' => 'outgoings#new'
  post 'outgoings' => 'outgoings#create'
  delete 'outgoings/:id' => 'outgoings#destroy' #削除
  patch 'outgoings/:id' => 'outgoings#update' #編集
  get 'outgoings/:id/edit' => 'outgoings#edit' #編集
  get 'outgoings/:id' => 'outgoings#show' #詳細画面
end
