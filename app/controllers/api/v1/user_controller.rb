class Api::V1::UserController < ApplicationController
  
  def index
    render json: User.all
  end

  def create
  	user = User.create(params.permit(:username, :password))
    render json: user
  end

  def show
  	render json: User.find(params[:id])
  end

end
