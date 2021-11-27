class ChangeTrailsDistance < ActiveRecord::Migration[6.0]
  def change
    change_column :trails, :distance, :float
  end
end
