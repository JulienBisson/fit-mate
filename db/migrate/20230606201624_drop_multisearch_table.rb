class DropMultisearchTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :pg_search_documents
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
