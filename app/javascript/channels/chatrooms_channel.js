import consumer from "./consumer"

consumer.subscriptions.create("ChatroomsChannel", {
  connected() {
    console.log('Connected!');
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data);
    const activeChatroom = $(`[data-behavior='messages'][data-chatroom-id=${data.chatroom_id}]`)
    if (activeChatroom.length > 0) {
      activeChatroom.append(data.message);
    } else {
      $(`[data-behavior='chatroom-link'][data-chatroom-id=${data.chatroom_id}]`).css('font-weight', 'bold')
    }
  }
});
