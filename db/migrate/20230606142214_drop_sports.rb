class DropSports < ActiveRecord::Migration[7.0]
  def change
    remove_reference :events, :sport, foreign_key: true, index: false
    drop_table :sports
  end
end
