class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.name = params[:name]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    if @user.save
      flash[:notice] = "Created User successfully!"
      redirect_to login_path
    else
      redirect_to signup_path
      flash[:alert] = "Invalid! #{@user.errors.full_messages.join}."
    end
  end

  def login
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      give_token
    else
      redirect_to admin_home_path
    end
  end

end
