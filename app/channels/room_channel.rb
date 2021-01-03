class RoomChannel < ApplicationCable::Channel
  # ConsumerがこのChannelのSubscriberになると
  # 以下のコードが呼び出される。
  def subscribed
    #streamはchannelにルーティング機能を与える。
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    #jsで実行されたspeakのmessageを受け取って、room_channelのreceivedにブロードキャスト(pub/subのリンク）する。
    ActionCable.server.broadcast 'room_channel', message: data['message']
  end
end
