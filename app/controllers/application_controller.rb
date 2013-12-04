class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception, :null_session
  #respond_to :json

  	def index
 		redirect_to "/app"
 	end	

	def hello
		render :json => {:data => "Hello the fucking bastard World"}
	end
end
