class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.datetime :event_date
      t.integer :creator_id

      t.timestamps
    end

    add_index :events, :creator_id
  end
end
