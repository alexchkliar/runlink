class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom).where(user_id: current_user.id).or(policy_scope(Chatroom)
                                       .where(recipient_id: current_user.id))
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def init_chatroom
    @chatrooms = policy_scope(Chatroom)
    @chatrooms.find(user_id: current_user.id, recipient_id: user.id)
    raise
  end
end
