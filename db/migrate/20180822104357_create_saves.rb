class CreateSaves < ActiveRecord::Migration[5.2]
  def change
    create_table :saves do |t|
      t.float :pocket_money
      t.float :property_worth
      t.float :salary
      t.float :weekly_expenses
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
