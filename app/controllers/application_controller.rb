class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_sign_in
  
  def current_user
    @current_user ||= User.where(id: session[:user_id]).first
  end

  def require_sign_in
    unless current_user
      redirect_to login_path
    end
  end


  
end
