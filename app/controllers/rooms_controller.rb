class RoomsController < ApplicationController
  def index
  end

  def show
    #ルーム内のメッセージ一覧を取得
    @messages = Message.all
  end

end
