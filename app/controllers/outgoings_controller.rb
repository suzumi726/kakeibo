class OutgoingsController < ApplicationController
  before_action :move_to_index, except: :index
  #ログインしてないと/outgoings/newにアクセスできない

  def index
    @outgoings = Outgoing.all.order("date DESC")
    # 支出の一覧を最新順(購入日順)で表示
  end

  def new
  end

  def create
    Outgoing.create(outgoing_params)
  end

  def destroy
    outgoing = Outgoing.find(params[:id])
    outgoing.destroy
  end

  def edit
    @outgoing = Outgoing.find(params[:id])
  end

  def update
    outgoing = Outgoing.find(params[:id])
    outgoing.update(outgoing_params)
  end

  private
  def outgoing_params
    params.permit(:item, :price, :place, :date)
  end

  def move_to_index
    redirect_to action: index unless user_signed_in?
  end
  #リダイレクト用のメソッド定義
end
