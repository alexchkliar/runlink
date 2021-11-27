class RemoveRatingFromTrails < ActiveRecord::Migration[6.0]
  def change
    remove_column :trails, :rating, :integer
  end
end
