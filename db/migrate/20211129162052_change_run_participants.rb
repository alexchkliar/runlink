class ChangeRunParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :run_participants, :seconds, :integer
    remove_column :run_participants, :run_time, :time
  end
end
