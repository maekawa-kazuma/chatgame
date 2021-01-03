App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    alert data['message']

  speak: (message) ->
    @perform 'speak',message: message
  
  # returnキーでデータを受け取る処理
  $(document).on 'keypress', '[data-behavior~=room_speak]', (event) ->
  if event.keyCode is 13
    App.room.speak event.target.value
    event.target.value = ''
    event.preventDefault()

#  $(document).on('keypress', '[data-behavior~=room_speaker]', function(event) {
#   # 押したキーのキーコードを取得（13はEnter)
#    if (event.keyCode === 13) {
#      chatChannel.speak(event.target.value);
#      event.target.value = '';
#      return event.preventDefault();
#    }
#  })