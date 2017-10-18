class UsersController < ApplicationController
  skip_before_filter :require_sign_in, only: [:new, :create]
  def index
    @users = User.all
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new(params[:user])
    if @user.save
      redirect_to login_path
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end
end
