class OrganizerController < ApplicationController
	  
	def index
		if organizer_signed_in?
			@my_project=Project.find_by(organizer_id:current_organizer.id)
		end
	end
end
