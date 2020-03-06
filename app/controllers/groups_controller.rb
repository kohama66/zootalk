class GroupsController < ApplicationController

  def index
    if user_signed_in?
      user = current_user 
      @group = user.groups.where("time > 0")
      if user.point_id == nil
        point_create()
      end
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

  def point_create
    point = Point.create(point: 0)
    user = User.find(current_user.id)
    user.update(point_id: point.id)
  end  
end
