class AddGenreIdToEvent < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :genre, foreign_key: true
  end
end
