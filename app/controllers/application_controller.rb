class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def new
  	@consultation = Consultation.new
  end

  def create
  	@consolutation = Consultation.new(params[:consultation])
    if @consolutation.save
    	redirect_to new_consolutation_path
    end
  end
end
