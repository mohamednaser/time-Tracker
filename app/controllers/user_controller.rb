class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(post_params)
    # debugger
    if @user.save
      redirect_to login_path, notice: 'User Created Successfully.'
    else
      redirect_to users_path, alert: @user.errors.full_messages.join('. ').to_s
    end
  end

  def view; end

  def post_params
    params.require(:user).permit(:name)
  end
end
