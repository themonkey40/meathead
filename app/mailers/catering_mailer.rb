class CateringMailer < ActionMailer::Base
  default from: "info@meatheadtruck.com"
  
  	def catering_email (email)
		@email = email
		delivery_options = { user_name: 'info@meatheadtruck.com', password: 'Oakland24', address: 'mail.privateemail.com' }
		mail(to: 'mphorton@gmail.com', subject: 'New Catering Request From Meatheadtruck.com', delivery_method_options: delivery_options)
	end

end
