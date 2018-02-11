class AddIsSaleToAvatar < ActiveRecord::Migration[5.1]
  def change
    add_column :avatars, :is_sale, :boolean
  end
end
