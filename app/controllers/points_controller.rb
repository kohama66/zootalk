class PointsController < ApplicationController

  def create
    user = current_user
    @flag = user.group_users.where(group_id: params[:group_id])
    # if flag.flag == false
    #   user = User.find(params[:id])
    #   point = user.point
    #   new_point = up(point)
    #   point.update(point: new_point)
    # end
    respond_to do |format|
      format.html
      format.json 
    end        
  end

  def up(point)
    new_point = point.point += 1
    return new_point
  end
end
