class ConsultationController < ApplicationController
  def new
  	@consultation = Consultation.new
  end

  def create
  	@consolutation = Consultation.new(params[:student])
    if @consolutation.save
    	redirect_to new_consolutation_path
    end
  end
end
