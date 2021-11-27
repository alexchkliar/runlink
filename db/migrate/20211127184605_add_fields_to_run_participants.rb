class AddFieldsToRunParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :run_participants, :run_time, :time
    add_column :run_participants, :distance, :float
    add_column :run_participants, :difficulty, :string
    add_column :run_participants, :completed, :boolean
  end
end
