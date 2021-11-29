class AddTrailImageToTrails < ActiveRecord::Migration[6.0]
  def change
    add_column :trails, :trail_img_url, :string
  end
end
