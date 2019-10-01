class AddTimeToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :time, :integer
  end
end
