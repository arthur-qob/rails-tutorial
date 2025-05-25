class RegistrationController < ApplicationController
  def new
    @user = User.new
  end

  def create
    params
    params[:user]
  end
end