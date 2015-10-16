class OrganizersController < ApplicationController
	def index
	end

	def create 
		@organizer = Organizer.new(organizer_params)
  		
  # 		if @organizer.save!
		#   respond_to do |format|
		#     format.js { render :js => "createdName()" }
		#   end
		# else
		#   respond_to do |format|
		#     format.js { render :js => "alert('error')" }
		#   end
		# end
	end

	def edit
	end


private
  def organizer_params
    params.require(:organizer).permit(:name, :email)
  end

end
