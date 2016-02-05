class HelloController < ApplicationController

	def view
		# render + hash
		# render text: "Hello World"

		# define an instance variable
		@hello = "Hello, I'm a variable!"
	end

	def again
		render text: "Hello again"
	end

	def subscribe
		@user_name = params[:name]
		@email = params[:email]

		render text: "You're now Subscribed!"
	end
end
