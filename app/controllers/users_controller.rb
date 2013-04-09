class UsersController < ApplicationController
  
  def new
    @user = User.new  
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up successfully!"
    else
      flash[:alert] = "Sign up failed."
      render "new"
    end
  end

end
