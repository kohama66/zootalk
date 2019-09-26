class MessagesController < ApplicationController

  def new
  end  

  def index
    @group = Group.find(params[:group_id])
    @messages = @group.messages.includes(:user)
    @message = Message.new
  end  

  def create
  end  
end
