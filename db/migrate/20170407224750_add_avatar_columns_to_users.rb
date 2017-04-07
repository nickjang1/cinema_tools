class AddAvatarColumnsToUsers < ActiveRecord::Migration[5.0]
   def up
    add_attachment :movies, :avatar
  end

  def down
    remove_attachment :movies, :avatar
  end
end
