class AddXpToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :xp, :integer
  end
end
