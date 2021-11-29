class RemoveRecipientIdfromChatrooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :chatrooms, :recipient_id
    add_reference :chatrooms, :recipient
  end
end
