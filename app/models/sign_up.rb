class SignUp < ActiveRecord::Base
	def say_hello
		"HELLO, #{self.name}"
	end

	def loud_email
		self.email.upcase
	end

	# redefines the method
	def email
		# super -- use the previous version of email (read attribute) and return it if present
		read_attribute(:email) || "noreply@hackeryou.com"
	end
end
