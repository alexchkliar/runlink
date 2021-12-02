class AddDecriptionToTrails < ActiveRecord::Migration[6.0]
  def change
    add_column :trails, :description, :string
  end
end
