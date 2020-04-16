class RemoveGenreIdFromEvent < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :genre_id, :integer
  end
end
