class AddRecipientIdToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_column :chatrooms, :recipient_id, :integer, null: false
  end
end
