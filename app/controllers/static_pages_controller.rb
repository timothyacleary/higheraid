class StaticPagesController < ApplicationController
	def home
	end

	def about
		@title = 'About Us'
	end

	def tos
		@title = 'Terms of Service'
	end
end
