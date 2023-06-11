class AddNameColumnToChatboxes < ActiveRecord::Migration[7.0]
  def change
    add_column :chatboxes, :name, :string
  end
end
