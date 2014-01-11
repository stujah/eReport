class ExpenseReportsController < ApplicationController
  before_filter :find_user
  
  def new
    @expense_report = @user.expense_reports.new
    5.times { @expense_report.expense_items.build }
  end
  
  def create
    @expense_report = @user.expense_reports.new(params[:expense_report])
    if @expense_report.save
      redirect_to user_path(@user)
      flash[:notice] = "Expense report successfully saved"
		else
			render :new
			flash[:notice] = "Expense report could not be saved"
    end
  end
  
  protected
  
  def find_user
    @user = User.find(params[:user_id])
  end
end
