class CreateExpenseReports < ActiveRecord::Migration
  def change
    create_table :expense_reports do |t|
      t.integer :user_id
      t.string :purpose
      t.string :date_range

      t.timestamps
    end
  end
end
