Rails.application.routes.draw do
  devise_for :users
  root 'outgoings#index' #ルートパスにアクセスした時にindexアクション
  get 'outgoings' => 'outgoings#index'
  get 'outgoings/new' => 'outgoings#new' #新規支出登録
  post 'outgoings' => 'outgoings#create'
  delete 'outgoings/:id' => 'outgoings#destroy', as: :outgoings_destroy #削除
  patch 'outgoings/:id' => 'outgoings#update', as: :outgoings_update #編集
  get 'outgoings/:id/edit' => 'outgoings#edit', as: :outgoings_edit #編集
  get 'outgoings/:id' => 'outgoings#show', as: :outgoings_show #詳細画面
end
