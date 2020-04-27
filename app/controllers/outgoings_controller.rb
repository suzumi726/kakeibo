class OutgoingsController < ApplicationController
  before_action :move_to_sign_in
  #ログインしてないとログイン画面にアクセス
  def index
    @outgoings = Outgoing.order("date DESC")
    # 支出の一覧を最新順(購入日順)で表示
    @q = Outgoing.ransack(params[:q])
    @outgoings = @q.result(distinct: true).page(params[:page]).per(10)
    #検索機能
  end

  def new
    #新規支出登録
  end

  def create
    Outgoing.create(outgoing_params)
  end

  def destroy
    outgoing = Outgoing.find(params[:id])
    outgoing.destroy
    #支出の削除
  end

  def edit
    @outgoing = Outgoing.find(params[:id])
    #支出の編集
  end

  def update
    @outgoing = Outgoing.find(params[:id])
    @outgoing.update(outgoing_params)
    #支出の更新
  end

  def show
    @outgoing = Outgoing.find(params[:id])
    #支出の詳細
  end

  private
  def outgoing_params
    params.permit(:item, :price, :place, :date)
  end

  def move_to_sign_in
    redirect_to controller: 'devise/sessions', action: 'new' unless user_signed_in?
  end
  #リダイレクト用のメソッド定義。ログインしてないとdevise/sessionsコントローラのnewアクションに
end
