class StaticPagesController < ApplicationController
#  attr_accessor :name , :email, :phone
#  attr_accessor :consultation
  def index
  	@consultation = Consultation.new
  end

def create
# @consultation = Consultation.build(consultation_params)
#
#  consultation = Consultation.new(name: '', email: '', phone: '')
  @consultation = Consultation.create(consultation_params)
  @consultation.save
  flash.now[:alert] = 'Error while sending message!'
end

def about
end

private
def consultation_params
	params.require(:consultation_params).permit(:name, :email, :phone, :locations, :bustype)
end

end
