class AddUserIdToAvatars < ActiveRecord::Migration[5.1]
  def change
    add_column :avatars, :user_id, :integer
  end
end
