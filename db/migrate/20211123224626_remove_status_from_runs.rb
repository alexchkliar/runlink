class RemoveStatusFromRuns < ActiveRecord::Migration[6.0]
  def change
    remove_column :runs, :status, :integer
  end
end
