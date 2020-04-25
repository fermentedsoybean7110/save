class OriginsController < ApplicationController
  before_action :authenticate_user!

  def index
    # @events = Event.group(:date) 一旦削除
  end

end
