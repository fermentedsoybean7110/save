class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  def new
    @expense = Expense.new
    @expense.build_event
  end

  def create
    Expense.create!(expense_params)
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @expense.update(expense_params)
    redirect_to root_path
  end

  def destroy
    @expense.destroy
    redirect_to root_path
  end

  
  private

  def set_expense
    @expense = Expense.find(params[:id])
  end

  def expense_params
    params.require(:expense).permit(:amount, event_attributes:[:title, :genre_ids, :date]).merge(user_id: current_user.id)
  end
end
