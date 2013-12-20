class MainController < ApplicationController

	def about
	end

	def try
		@event = Event.find(1)
	end

end
