class CreateEventGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :event_genres do |t|
      t.references :event, foreign_key: true
      t.references :genre, foreign_key: true
      t.timestamps
    end
  end
end
