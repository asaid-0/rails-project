class UsersController < ApplicationController
  def login
  end

  def register
  end

  def signin
    @user = User.find_by(name: params[:name])
    if @user.try(:authinticate, params[:password])
      session[:id] = @user.id
      redirect_to :root
    else
      render :login
    end
  end

  def signup
    @user = user.create(name: params[:name], password: params[:password], password_confirmation: params[:password_confirmation])
    if @user.persisted?
      session[:id] = @user.id
      redirect_to :root
    else
      redirect_to :register
    end
  end

  def logout
    session[:id] = nil
    redirect_to :login
  end


end
