class RemoveUseIdFromEvent < ActiveRecord::Migration[5.0]
  def change
    remove_reference :events, :user, foreign_key: true
  end
end
