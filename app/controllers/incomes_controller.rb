class IncomesController < ApplicationController
  def new
  end

  def create
    Income.create(income_params)
  end
  
  private
  def income_params
    params.permit(:date, :name, :amount)
  end
end
