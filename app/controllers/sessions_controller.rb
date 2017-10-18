class SessionsController < ApplicationController
  skip_before_filter :require_sign_in
  def new
  end

  def create
    if user = User.authenticated(params[:session][:mobile], params[:session][:password])
      session[:user_id] = user.id
      redirect_to users_path
    else
      render 'new'
    end
  end

  def destroy
    @current_user = nil
    session.delete(:user_id)
  end

end