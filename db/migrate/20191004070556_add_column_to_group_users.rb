class AddColumnToGroupUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :group_users, :flag, :boolean, default: false, null: false
  end
end
