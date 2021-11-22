class CreateRunParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :run_participants do |t|
      t.references :user, null: false, foreign_key: true
      t.references :run, null: false, foreign_key: true
      t.boolean :creator

      t.timestamps
    end
  end
end
