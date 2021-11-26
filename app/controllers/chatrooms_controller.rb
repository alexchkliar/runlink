class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom).where(user_id: current_user.id)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
