class CreateAvatarsPhrases < ActiveRecord::Migration[5.1]
  def change
    create_table :avatars_phrases, id: false do |t|
      t.integer :avatar_id
      t.integer :phrase_id
    end
  end
end
