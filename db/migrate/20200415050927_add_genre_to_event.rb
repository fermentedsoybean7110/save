class AddGenreToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :genre, :string
  end
end
