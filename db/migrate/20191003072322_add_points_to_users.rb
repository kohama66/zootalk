class AddPointsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :point, foreign_key: true
  end
end
