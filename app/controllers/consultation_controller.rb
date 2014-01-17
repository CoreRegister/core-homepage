class ConsultationController < ApplicationController
  def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.build(consultation_params)
    if @consultation.save
      redirect_to consultation_path
    else
      render ‘new’
    end
  end

  private
    def consultation_params
      params.require(:consultation).permit(:name, :email, :subject, :body)
    end
end