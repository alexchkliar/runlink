class MessagesController < ApplicationController
  def all_messages
  end

  def my_messages
    @messages = policy_scope(Message).where(sender_id: current_user.id, receiver_id: params[:receiver_id])
                                     .or(policy_scope(Message).where(receiver_id: current_user.id, sender_id: params[:receiver_id]))
                                     .order(created_at: :asc )
  end

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
    else
      render "chatrooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
