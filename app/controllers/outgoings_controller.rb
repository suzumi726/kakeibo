class OutgoingsController < ApplicationController
  before_action :move_to_index, except: :index
  #ログインしてないと/outgoings/newにアクセスできない

  def index
    @outgoings = Outgoing.all.order("created_at DESC")
    # 支出の一覧を最新順で表示
  end

  def new

  end

  def create
    Outgoing.create(outgoing_params)
  end

  private
  def outgoing_params
    params.permit(:item, :price, :date)
  end

  def move_to_index
    redirect_to action: index unless user_signed_in?
  end
  #リダイレクト用のメソッド定義
end
