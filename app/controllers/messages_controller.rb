class MessagesController < ApplicationController

  def new
  end  

  def index
    @group = Group.find(params[:group_id])
    @messages = @group.messages.includes(:user)
    @message = Message.new
    @members = @group.users
    respond_to do |format|
      format.html
      format.json
    end
  end  

  def create
    Message.create(message_params)
    redirect_back(fallback_location: group_messages_path)
  end  

  private
  def message_params
    params.require(:message).permit(:messages, :image).merge(group_id: params[:group_id], user_id: current_user.id)
  end
end
