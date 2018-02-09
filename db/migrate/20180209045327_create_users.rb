class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password
      t.integer :coins
      t.boolean :is_admin

      t.timestamps
    end
  end
end
