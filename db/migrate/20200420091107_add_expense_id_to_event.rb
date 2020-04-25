class AddExpenseIdToEvent < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :expense, foreign_key: true
  end
end
