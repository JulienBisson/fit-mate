class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :age, :integer
    add_column :users, :description, :text
    add_column :users, :favorite_sport, :string
    add_column :users, :certified_profile, :boolean
    add_column :users, :level_user, :string
  end
end
