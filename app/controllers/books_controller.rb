class BooksController < ApplicationController
  skip_before_filter :require_sign_in, only: [:index, :show]
  def index
    @books = Book.where(status: 1)
  end

  def new
    @book =Book.new
    @user = current_user
  end

  def create
    @book = Book.new(params[:book])
    if @book.save
      redirect_to books_path
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

end
