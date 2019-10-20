class MessageRelayJob < ApplicationJob
  queue_as :default

  def perform(message_id)
    message = Message.find(message_id)
    ActionCable.server.broadcast "chatrooms: #{message.chatroom.id}",
                                 message: MessagesController.render(message),
                                 chatroom_id: message.chatroom.id
  end
end
