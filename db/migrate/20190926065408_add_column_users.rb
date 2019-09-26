class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :icon, foreign_key: true
  end
end
