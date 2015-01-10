class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
  end
  
  #private
  
  #helper_method :gravatar_for
end
