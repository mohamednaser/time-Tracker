class AuthController < ApplicationController
  def create
    @user = User.find_by(name: post_params[:name])

    if @user.nil?
      redirect_to login_path, alert: 'User Not Found '
    else
      cookies[:user_id] = @user.id
      redirect_to transactions_path
    end
  end

  def new
    @user = User.new
  end

  def destroy
    cookies.delete :user_id
    redirect_to login_path
  end

  def post_params
    params.require(:user).permit(:name)
  end
end
