class Group < ApplicationRecord
  has_many :messages
  has_many :group_users
  has_many :users, through: :group_users

  def last_user_icon
    if messages.present? 
      last_user_icon = messages.last
      last_user_icon.user.icon.image
    else
      "dog.png"
    end  
  end
end
