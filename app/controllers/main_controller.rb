class MainController < ApplicationController

	def about
	end

	def try
		@event = Event.find(1)
		@users = User.take(5)
	end

	def demo_join
		@user = User.new
		@event = Event.find(1)
  end

  def demo_create

  	@event = Event.find(1)
    @user = @event.users.create(user_params)

    respond_to do |format|
    	if @user.save
    		format.html {redirect_to @event, notice: 'Welcome!'}
    	else
    		format.html (render action: 'join')
    	end
    end
	end

  private

    def set_event
      @event = Event.find(params[:id])
    end


    def user_params
      params.require(:user).permit(:name, :first_answer, :second_answer, :third_answer, :image)
    end


end
