class GroupsController < ApplicationController

  def index
    if user_signed_in?
      user = current_user 
      @group = user.groups.where("time > 0")
    end
  end

  def new
    @group = Group.new
    @users = User.where.not(icon_id: current_user.icon_id).order("RANDOM()").limit(4)
  end

  def create
    Group.create(group_params)
  end


  private
  def group_params
    params.require(:group).permit(:name, { :user_ids => [] }, :time )
  end 
end
