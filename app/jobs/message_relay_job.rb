class MessageRelayJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "chatroom: #{message.chatroom.id}",
                                 message: MessageController.render(message),
                                 chatroom_id: message.chatroom.id
  end
end
