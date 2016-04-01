class SessionsController < ApplicationController

  def new
    @admin_user = AdminUser.new
  end

  def create
    @admin_user = AdminUser.find_by(username: params[:admin_user][:username])
    if @admin_user && @admin_user.authenticate(params[:admin_user][:password])
      session[:admin_user_id] = @admin_user.id
      redirect_to root_path
    else
      @error = "Username or password was not valid."
      render 'new'
    end
  end

  def destroy
    session.delete(:admin_user_id)
    redirect_to root_path
  end

end
