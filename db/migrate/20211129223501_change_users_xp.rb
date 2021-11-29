class ChangeUsersXp < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :xp, :integer
    add_column :users, :xp, :integer, default: 0
  end
end
