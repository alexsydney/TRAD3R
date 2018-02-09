class RemoveAvatarIdFromPhrases < ActiveRecord::Migration[5.1]
  def change
    remove_column :phrases, :avatar_id, :string
  end
end
