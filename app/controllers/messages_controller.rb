class MessagesController < ApplicationController
  def all_messages
  end

  def my_messages
    @messages = policy_scope(Message)
  end

  def create
  end
end
