class AddStatusToRunParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :run_participants, :status, :integer
  end
end
