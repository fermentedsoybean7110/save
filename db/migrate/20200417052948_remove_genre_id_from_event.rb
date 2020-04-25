class RemoveGenreIdFromEvent < ActiveRecord::Migration[5.0]
  def change
    remove_reference :events, :genre, foreign_key: true
  end
end
