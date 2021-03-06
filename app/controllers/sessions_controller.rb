class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_name(params[:user][:name])

    if @user.try(:authenticate, params[:user][:password])
      session[:user_id] = @user.id
      redirect_to users_welcome_path
    else
      render :new
    end

  end

end
