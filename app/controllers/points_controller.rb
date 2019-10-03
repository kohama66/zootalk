class PointsController < ApplicationController

  def create
    user = User.find(params[:id])
    point = user.point
    new_point = up(point)
    point.update(point: new_point)
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
