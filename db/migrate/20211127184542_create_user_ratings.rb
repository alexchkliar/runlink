class CreateUserRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :user_ratings do |t|
      t.references :rater, null: false, foreign_key: { to_table: :users }
      t.references :ratee, null: false, foreign_key: { to_table: :users }
      t.boolean :thumbs_up
      t.timestamps
    end
  end
end
