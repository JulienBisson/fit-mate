class ChangeNameColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :level_user, :sport_level
  end
end
