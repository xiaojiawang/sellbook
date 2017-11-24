class BooksController < ApplicationController
  skip_before_filter :require_sign_in, only: [:index, :show]
  def index
    @search = Book.search(params[:search])
    @books = @search.all
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
    @book = Book.find(params[:id])
  end

  # temp_file = TempFile.new
  #     temp_file.url = params[:file]
  #     if temp_file.save
  #       if Customer.import(temp_file.url)
  #         temp_file.destroy
  #         redirect_to :back, notice: '导入成功'
  #       else
  #         redirect_to :back, alert: '导入失败,请核对excel数据是否正确'
  #       end
  #     end

  def import
    p "我是进来了"
    temp_file = TempFile.new
    temp_file.url = params[:file]
    if temp_file.save
      if Book.import(temp_file.url)
        temp_file.destroy
        redirect_to books_path
      else
        redirect_to self_info_path
      end
    end

  end

end
