class EventsController < ApplicationController

  before_action :set_event, only: [:show]
	
	def index
		@event = Event.new
	end

	def show
	end

	def create

		@event = Event.new(event_params)

		respond_to do |format|
			if @event.save
				format.html {redirect_to @event, notice: 'Your event was created!'}
			else
				format.html {render action: 'index'}
			end
		end
	end

	private

	  def set_event
	  	@event = Event.find(params[:id])
	  end

	  def event_params
	  	binding.pry
	  	params.require(:event).permit(:name, :date, :host, :question_1, :question_2, :question_3, :keyword)
	  end

end
