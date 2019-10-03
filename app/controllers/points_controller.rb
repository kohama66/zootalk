class PointsController < ApplicationController

  def create
    point = Point.create(point: 0)
    user = User.find(current_user.id)
    user.update(point_id: point.id)
  end

end
