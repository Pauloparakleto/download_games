class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.name
      p "Welcome #{session[:user_name]}!"
      redirect_to admin_home_path
      flash[:notice] = 'Successfully loged in!'
      p "Helooooooooow"
    else
      flash[:alert] = 'Invalid username or password!'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_name] = nil
    flash[:notice] = "Successfully Logged Out!"
    redirect_to login_path
   end
end
