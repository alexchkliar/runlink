class CreateRuns < ActiveRecord::Migration[6.0]
  def change
    create_table :runs do |t|
      t.references :trail, null: false, foreign_key: true
      t.boolean :status
      t.datetime :date
      t.integer :duration

      t.timestamps
    end
  end
end
