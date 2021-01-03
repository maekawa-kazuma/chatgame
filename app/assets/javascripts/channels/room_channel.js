//chanellで定義したspeakメソッドを動かすためにjs側でspeak関数を定義

// const chatChannell = App.cable.subscriptions.create("RoomChannel", {
  //room_channelでブロードキャストされたものが以下に届く
  // received: function(data) {
  //   return alert(data['message']);
  // },
  // これが実行されるとコンシューマになったroom_channelのspeak({ message: message })が呼び出される
//   speak: function(message) {
//     return this.perform('speak', {
//       message: message
//     });
//   }
// });

// $(document).on('keypress', '[data-behavior~=room_speaker]', function(event) {
  // 押したキーのキーコードを取得（13はEnter)
//   if (event.keyCode === 13) {
//     chatChannel.speak(event.target.value);
//     event.target.value = '';
//     return event.preventDefault();
//   }
// })