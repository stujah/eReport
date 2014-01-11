class ExpenseReport < ActiveRecord::Base
  attr_accessible :date_range, :purpose, :expense_items_attributes, :expense_type
  attr_reader :user_id
  
  belongs_to :user
  has_many :expense_items
  accepts_nested_attributes_for :expense_items, allow_destroy: true, reject_if: proc { |a| a['date'].blank? }
end
