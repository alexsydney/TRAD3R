class CreatePhrases < ActiveRecord::Migration[5.1]
  def change
    create_table :phrases do |t|
      t.text :body
      t.integer :value
      t.integer :avatar_id
      t.integer :user_id

      t.timestamps
    end
  end
end
