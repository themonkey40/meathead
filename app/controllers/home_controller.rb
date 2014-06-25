class HomeController < ApplicationController
	def index
	end

	def create
		@email = params
		CateringMailer.catering_email.deliver

		redirect_to root_path
	end
	private
    def email_params
      params.permit(:name, :email, :phone, :message)
    end
end
