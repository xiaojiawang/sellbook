class CitiesController < ApplicationController
  def cities
    @cities = City.where(province_id: params[:province_id].to_i)
    respond_to do |format|
      format.json { render json: @cities }
    end
  end
end