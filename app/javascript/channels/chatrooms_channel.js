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
    $("[data-behavior='messages']").append(data.message)
  }
});
