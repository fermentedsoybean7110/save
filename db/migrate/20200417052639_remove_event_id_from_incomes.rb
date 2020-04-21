class RemoveEventIdFromIncomes < ActiveRecord::Migration[5.0]
  def change
    remove_reference :incomes, :event, foreign_key: true
  end
end
