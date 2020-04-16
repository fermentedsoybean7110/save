class RemoveGenreFromEvent < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :genre, :string
  end
end
