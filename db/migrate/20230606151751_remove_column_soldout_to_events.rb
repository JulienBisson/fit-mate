class RemoveColumnSoldoutToEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :soldout, :boolean
  end
end
