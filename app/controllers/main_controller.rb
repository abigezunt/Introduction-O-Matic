class MainController < ApplicationController

	def about
	end

	def try
		@event = Event.first
	end

end
