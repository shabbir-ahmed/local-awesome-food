class User < ApplicationRecord
	validates_presence_of :full_name, :email, :password
	validates_length_of :full_name, minimum: 3, maximum: 20 
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	# has_secure_password
	validates_confirmation_of :password, :message => "should match confirmation"
end
