class ExpenseItem < ActiveRecord::Base
  attr_accessible :date, :description, :price, :expense_type
  attr_reader  :expense_report_id
  belongs_to :expense_report
end
