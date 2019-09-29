class GroupsController < ApplicationController

  def index
  end

  def new
    @group = Group.new
    @users = User.where.not(icon_id: current_user.icon_id).limit(4)
  end

  def create
    binding.pry
    Group.create(group_params)
  end


  private
  def group_params
    params.require(:group).permit(:name, { :user_ids => [] } )
  end 
  # (:name, { :user_ids => [] }, :group_id )
end
