class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :localisation
      t.boolean :soldout
      t.string :event_level
      t.integer :max_participant
      t.datetime :datetime
      t.references :organizer, null: false, foreign_key: { to_table: :users }
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
