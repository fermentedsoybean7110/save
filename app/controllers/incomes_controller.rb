class IncomesController < ApplicationController
  before_action :set_income, only: [:show, :edit, :update, :destroy]
  def new
    @income = Income.new
    @income.build_event
  end

  def create
    Income.create!(income_params)
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @income.update(income_params)
    redirect_to root_path
  end

  def destroy
    @income.destroy
    redirect_to root_path
  end

  
  private

  def set_income
    @income = Income.find(params[:id])
  end

  def income_params
    params.require(:income).permit(:amount, event_attributes:[:title, :genre_ids, :date]).merge(user_id: current_user.id)
  end

end

