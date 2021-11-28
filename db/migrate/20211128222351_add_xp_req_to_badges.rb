class AddXpReqToBadges < ActiveRecord::Migration[6.0]
  def change
    add_column :badges, :req_xp, :integer
  end
end
