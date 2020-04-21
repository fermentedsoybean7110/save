class AddIncomeIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :income, foreign_key: true
  end
end
