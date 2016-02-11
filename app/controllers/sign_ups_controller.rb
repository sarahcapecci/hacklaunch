class SignUpsController < ApplicationController

	def create
		new_name = params[:sign_up][:name]
		new_email = params[:sign_up][:email]
		
		# s = SignUp.new
		# s.name = params[:name]
		# s.email = params[:email]
		
		# if I didn't render, it would look for the view create.html.erb
		# render text: "Created!"
		if SignUp.find_by(email: new_email) 
			@message = "This e-mail already exists"
		elsif new_name.present? && new_email.present?
			SignUp.create({
				name: new_name,
				email: new_email
			})
			@message = "Saved!"
		else 
			@message = "Oops, you should add valid data!"
		end

	end

	def new
		@sign_up = SignUp.new
	end

	def index
		filter = params[:filter]

		if filter
			@sign_ups = SignUp.where(name: filter.to_s)
		else 
			@sign_ups = SignUp.all
		end
	end

	def destroy
		@sign_up = SignUp.find(params[:id])
		@sign_up.destroy

		respond_to do |format|
	      format.html { redirect_to sign_ups_url }
	      format.json { head :no_content }
	    end
	end

end
