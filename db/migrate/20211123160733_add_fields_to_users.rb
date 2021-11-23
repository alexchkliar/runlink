class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :location, :string
    add_column :users, :running_exp, :string
    add_column :users, :bio, :text
    add_column :users, :birth_date, :date
  end
end
