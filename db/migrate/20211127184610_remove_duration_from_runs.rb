class RemoveDurationFromRuns < ActiveRecord::Migration[6.0]
  def change
    remove_column :runs, :duration, :integer
  end
end
