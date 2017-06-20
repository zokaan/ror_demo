class SessionsController < ApplicationController
  def new
  end

  def create
    #test = "hello debugger"
    #binding.pry
    # @user = User.find(2)
    # @user = User.find_by(email: params[:email])
    # @user = User.find_by_email(params[:email])
    # @user = User.where(email: params[:email]).first
    # @user = User.where("email = ?", params[:email]).first
    # @user = User.where("email = ? AND username = ?", params[:email], params[:username]).first
    # @user = User.where("email = ?", params[:email]).where("username = ?", params[:username]).first
    # @user = User.with_email(params[:email]).with_username(params[:username]).first
    # @user = User.with_email_and_username(params[:email], params[:username])

    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      if params[:remember_me]
        cookies[:user] = { value: @user.id, expires: 1.day.from_now }
      else
        session[:user] = @user.id
      end

      flash[:notice] = 'User authenticated :)'
      redirect_to root_path
    else
      flash[:error] = "Invalid email or password :'("
      redirect_to login_path
    end
  end

  def destroy
    if session[:user]
      session[:user] = nil
    else
      cookies.delete(:user)
    end

    redirect_to login_path
  end
end
