class CreateExpenseItems < ActiveRecord::Migration
  def change
    create_table :expense_items do |t|
      t.integer :expense_report_id
      t.string :date
      t.string :description
      t.decimal :price
      t.string :type

      t.timestamps
    end
  end
end
