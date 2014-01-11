class RenameTypeOnExpenseItems < ActiveRecord::Migration
  def change
    rename_column :expense_items, :type, :expense_type
  end
end
