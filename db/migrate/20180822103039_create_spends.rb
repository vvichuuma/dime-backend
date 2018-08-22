class CreateSpends < ActiveRecord::Migration[5.2]
  def change
    create_table :spends do |t|
      t.float :pocket_money
      t.float :saving
      t.float :weekly_expenses
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
