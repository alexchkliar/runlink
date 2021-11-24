class MessagesController < ApplicationController
  def all_messages
  end

  def my_messages
    @messages = policy_scope(Message).where(sender_id: current_user.id, receiver_id: params[:receiver_id])
                                     .or(policy_scope(Message).where(receiver_id: current_user.id, sender_id: params[:receiver_id]))
                                     .order(created_at: :asc)
  end

  def create
  end
end
