class MainController < ApplicationController
  before_action :set_event, only: [:show]

	def index
		@event = Event.new
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

	def show
	end

	private

	  def set_event
	  	@event = Event.includes(:users).find(params[:id])
	  end

	  def event_params
	  	params.require(:event).permit(:name, :date, :host_id)
	  end
	
end
