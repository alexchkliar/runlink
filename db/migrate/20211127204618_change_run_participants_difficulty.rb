class ChangeRunParticipantsDifficulty < ActiveRecord::Migration[6.0]
  def change
    remove_column :run_participants, :difficulty, :string
    add_column :run_participants, :difficulty, :integer
  end
end
