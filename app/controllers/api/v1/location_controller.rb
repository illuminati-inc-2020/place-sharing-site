class Api::V1::LocationController < ApplicationController
  
  def index
    render json: Location.all
  end

  def create
  	location = Location.create(params.permit(:user_id, :lat, :long, :public, :shared_locations))
    create_shared_location(params, location)
    render json: location
  end

  def show
  	render json: Location.find(params[:id])
  end

  def create_shared_location(params, location)
    return if params[:shared_locations].blank? || params[:public]
    params[:shared_locations].each do |shared_location_params| 
      SharedLocation.create(
        :user_id => shared_location_params[:user_id],
        :location => location
      )
    end
  end

end
