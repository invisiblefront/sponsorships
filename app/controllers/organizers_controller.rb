class OrganizersController < ApplicationController
	def index
	end

	def create 
		@organizer = Organizer.new(organizer_params)
  		
  		if @organizer.save!
  			redirect_to :controller => 'projects', 
  			:action => 'new',
  			:organizer_id => organizer_params[:id], 
  			:organizer_name => organizer_params[:name],
  			:organizer_email => organizer_params[:email]
		else
		  respond_to do |format|
		    format.js { render :js => "alert('error')" }
		  end
		end
	end

	def edit
	end


private
  def organizer_params
    params.require(:organizer).permit(:name, :email)
  end

end
