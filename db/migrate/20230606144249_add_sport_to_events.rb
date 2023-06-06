class AddSportToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :sport, :string
  end
end
