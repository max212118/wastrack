class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
  end

  def index
    policy_scope(Chatroom)
    @chatrooms = current_user.chatrooms
  end
end
