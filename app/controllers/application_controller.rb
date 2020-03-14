# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def is_signed_in
  
    return redirect_to login_path if cookies[:user_id].nil?    
    
    @current_user = User.find(cookies[:user_id])
    if @current_user.nil?
        redirect_to login_path
    end
 end
end
