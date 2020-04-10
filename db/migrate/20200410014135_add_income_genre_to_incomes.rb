class AddIncomeGenreToIncomes < ActiveRecord::Migration[5.0]
  def change
    add_reference :incomes, :income_genre, foreign_key: true
  end
end
