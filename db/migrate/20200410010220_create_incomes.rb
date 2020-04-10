class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.references :user,       foreign_key: true
      t.references :income_genre,       foreign_key: true
      t.date :date,             null: false
      t.string :name
      t.integer :amount,        null: false
      t.timestamps
    end
  end
end
