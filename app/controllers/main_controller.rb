class MainController < ApplicationController
  before_action :set_event, only: [:show, :join, :submit_first_answer]

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

	def join
		@answer = Answer.new
	end

	def submit_first_answer
		@answer = Answer.new(answer_params)
		@event.users << current_user

		respond_to do |format|
			if @answer.save
				format.html {redirect_to @event, notice: 'Cool, dude!'}
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
	  	params.require(:event).permit(:name, :date, :host_id)
	  end

	  def answer_params
	  	params.require(:answer).permit(:response, :user_id)
	  end
	
end
