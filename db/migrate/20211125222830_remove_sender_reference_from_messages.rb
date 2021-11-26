class RemoveSenderReferenceFromMessages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :messages, :sender
    remove_reference :messages, :receiver
  end
end
