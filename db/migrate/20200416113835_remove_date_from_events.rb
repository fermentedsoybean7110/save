class RemoveDateFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :date, :date
    remove_column :events, :amount, :integer
  end
end
