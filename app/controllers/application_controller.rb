class ApplicationController < ActionController::Base
  def signed_in?
    return redirect_to login_path if cookies[:user_id].nil?

    @current_user = User.find_by(id: cookies[:user_id])
    redirect_to login_path, notice: 'You Should Login.' if @current_user.nil?
  end
end
