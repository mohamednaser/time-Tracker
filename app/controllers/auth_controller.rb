# frozen_string_literal: true

class AuthController < ApplicationController
  def login
    @user = User.find_by(name: post_params[:name])

    if @user.nil?
      redirect_to login_path, alert: 'User Not Found ' 
    else
      cookies[:user_id]   =  @user.id
      redirect_to transaction_index_path
    end
  end

  def new
    @user = User.new
  end

  def post_params
    params.require(:user).permit(:name)
  end
end
