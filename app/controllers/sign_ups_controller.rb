class SignUpsController < ApplicationController

	def create
		s = SignUp.new
		s.name = params[:name]
		s.email = params[:email]
		
		# if I didn't render, it would look for the view create.html.erb
		# render text: "Created!"
		if SignUp.find_by(email: s.email) 
			@message = "This e-mail already exists"
		end
		
		if s.name.present? && s.email.present?
			s.save
			@message = "Saved!"
		else 
			@message = "Oops, you should add valid data!"
		end

	end
end
