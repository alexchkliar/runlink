class MessagesController < ApplicationController
  def all_messages
  end

  def index
    @messages = policy_scope(Message)
  end

  def create
  end
end
