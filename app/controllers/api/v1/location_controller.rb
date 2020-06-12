class Api::V1::LocationController < ApplicationController
  
  def index
    render json: Location.all
  end

  def create
  	location = Location.create(params)
    render json: location
  end

  def show
  	render json: Location.find(params[:id])
  end

end
