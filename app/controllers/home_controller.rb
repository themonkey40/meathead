class HomeController < ApplicationController

	def index
		@home = Humanizer
	end

	def create
		CateringMailer.catering_email(email_params).deliver
		redirect_to root_path
	end

	private
    
    def email_params
      params.permit(:name, :email, :phone, :message)
    end
end
