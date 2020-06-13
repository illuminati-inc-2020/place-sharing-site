class Api::V1::SessionsController < ApplicationController

  def signup
    user = User.find_by(username: params[:username])
    if user.present?
    	render json: {message: "User already exists"}
    	return
    end
    user = User.create(params.permit(:username, :password)) if user.nil?
	if user.present?
	    session[:username] = user
	    render json: user
	else
		render json: {message: "Could not sign up"}
	end
  end

  def login
  	user = User.find_by(username: params[:username])
  	if user.present? && user[:password] == params[:password]
	  	session[:username] = user
	  	render json: user
	else
		render json: {message: "Invalid username or password"}
	end
  end

  def logout
  	session[:username] = nil
  	render json: {message: "Logged out"}
  end

end
