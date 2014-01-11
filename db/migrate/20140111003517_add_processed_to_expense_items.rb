class AddProcessedToExpenseItems < ActiveRecord::Migration
  def change
    add_column :expense_items, :processed, :boolean
  end
end
