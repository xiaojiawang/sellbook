class UsersController < ApplicationController
  skip_before_filter :require_sign_in, only: [:new, :create]
  before_filter :find_user, only: [:edit, :update]
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

  def update
    if @user.update_attributes(params[:user])
      redirect_to books_path
    else
      render 'self_info'
    end

  end

  def show
  end

  def find_user
    @user = User.find(params[:id])
  end

  def self_info
    @user = current_user
  end

end
