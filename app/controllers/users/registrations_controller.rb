# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def create
    User.create(user_params)
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
