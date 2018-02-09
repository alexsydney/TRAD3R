class CreateAvatars < ActiveRecord::Migration[5.1]
  def change
    create_table :avatars do |t|
      t.text :src
      t.text :name
      t.text :description
      t.integer :value
      t.integer :phrase_id

      t.timestamps
    end
  end
end
