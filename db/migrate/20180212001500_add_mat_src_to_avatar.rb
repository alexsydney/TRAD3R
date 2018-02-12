class AddMatSrcToAvatar < ActiveRecord::Migration[5.1]
  def change
    add_column :avatars, :mat_src, :text
  end
end
