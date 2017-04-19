Rails.application.routes.draw do
  devise_for :users
  root  'tweets#index'                                 #ルートパスの指定
  get   'tweets'      =>  'tweets#index'               #ツイート一覧画面
  get   'tweets/new'  =>  'tweets#new'                 #ツイート投稿画面
  post  'tweets'      =>  'tweets#create'              #ツイート投稿機能
  delete  'tweets/:id'  => 'tweets#destroy'
  get   'tweets/:id/edit'  =>  'tweets#edit',  as: :edit_tweet
  patch  'tweets/:id'  =>  'tweets#update',  as: :tweet
  get   'users/:id'   =>  'users#show',    as: :user   #ユーザー詳細画面
end