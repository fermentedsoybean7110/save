class IncomesController < ApplicationController
  def new
    @income = Income.new
  end

  def create
    Income.create(income_params)
    redirect_to root_path
  end

  
  
  private
  def income_params
    params.require(:income).permit(:date, :name, :amount, :igenre_id).merge(user_id: current_user.id)
  end
end