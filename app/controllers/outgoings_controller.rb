class OutgoingsController < ApplicationController
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
end
