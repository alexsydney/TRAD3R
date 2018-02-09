class RemoveUserIdFromPhrases < ActiveRecord::Migration[5.1]
  def change
    remove_column :phrases, :user_id, :string
  end
end
