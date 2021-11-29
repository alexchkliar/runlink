class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom).where(user_id: current_user.id)
                                       .or(policy_scope(Chatroom).where(recipient_id: current_user.id))
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.create(user_id: params[:user_id], recipient_id: params[:recipient_id])
    redirect_to chatroom_path(@chatroom)
  end
end
