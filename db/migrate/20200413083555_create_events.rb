class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.integer :amount
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
