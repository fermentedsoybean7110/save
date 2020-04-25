class RemoveDateFromIncome < ActiveRecord::Migration[5.0]
  def change
    remove_column :incomes, :date, :date
  end
end
