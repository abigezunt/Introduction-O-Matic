class UsersController < ApplicationController
  before_action :set_event

  def join
  	@user = User.new
  end

	def create
    binding.pry
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
