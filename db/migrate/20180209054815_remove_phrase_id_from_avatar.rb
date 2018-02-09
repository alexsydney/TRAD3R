class RemovePhraseIdFromAvatar < ActiveRecord::Migration[5.1]
  def change
      remove_column :avatars, :phrase_id
  end
end
