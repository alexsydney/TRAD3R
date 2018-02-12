class AddObjSrcToAvatar < ActiveRecord::Migration[5.1]
  def change
    add_column :avatars, :obj_src, :text
  end
end
