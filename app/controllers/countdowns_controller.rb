class CountdownsController < ApplicationController
  def index
    @search = Countdown.search(params[:search])
    @countdowns = @search.all
  end

  def new
    @countdown =Countdown.new
  end

  def create
    p "===============================params========================"
    p params
    p "===============================params========================"
    @countdown = Countdown.new(params[:countdown])
    if @countdown.save
      redirect_to countdowns_path
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @countdown = Countdown.find(params[:id])
  end

end
