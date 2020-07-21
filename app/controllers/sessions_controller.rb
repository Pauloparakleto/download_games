class SessionsController < ApplicationController
  def new
  end

  def create
    if User.find_by(name: params[:name]).try(:authenticate, params[:password])
      redirect_to admin_home_path
      flash[:notice] = 'Successfully loged in!'
      p "Helooooooooow"
    else
      flash[:alert] = 'Invalid username or password!'
      redirect_to login_path
    end
  end
end
